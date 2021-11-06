#!/bin/bash

# As per AWS, this is how you enable ALB (https://aws.amazon.com/premiumsupport/knowledge-center/eks-alb-ingress-controller-fargate/)

aws iam create-policy \
  --policy-name AWSLoadBalancerControllerIAMPolicy \
  --policy-document file://iam_policy.json \
  --profile onb

eksctl create iamserviceaccount \
  --cluster=training-eks3-juno \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --attach-policy-arn=arn:aws:iam::883388690928:policy/AWSLoadBalancerControllerIAMPolicy \
  --override-existing-serviceaccounts \
  --profile=onb \
  --approve

aws eks --region us-east-1 \
  update-kubeconfig \
  --name training-eks3-juno \
  --profile onb

helm repo add eks https://aws.github.io/eks-charts

kubectl apply -f https://raw.githubusercontent.com/aws/eks-charts/master/stable/aws-load-balancer-controller/crds/crds.yaml

helm upgrade --install aws-load-balancer-controller eks/aws-load-balancer-controller \
    --set profile=onb \
    --set clusterName=training-eks3-juno \
    --set serviceAccount.create=false \
    --set region=us-east-1 \
    --set vpcId=vpc-0558a0b8f533c0b97 \
    --set serviceAccount.name=aws-load-balancer-controller \
    -n kube-system
