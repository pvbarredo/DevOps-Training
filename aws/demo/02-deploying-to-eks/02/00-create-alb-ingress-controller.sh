#!/bin/bash

aws iam create-policy \
  --policy-name AWSLoadBalancerControllerAdditionalIAMPolicy \
  --policy-document file://iam_policy_v1_to_v2_additional.json \
  --profile=onb \


aws iam attach-role-policy \
  --role-name EKS_Cluster \
  --policy-arn arn:aws:iam::883388690928:policy/AWSLoadBalancerControllerAdditionalIAMPolicy \
  --profile=onb

eksctl utils associate-iam-oidc-provider \
  --region=us-east-1 \
  --cluster=training-eks-juno \
  --profile=onb \
  --approve

eksctl create iamserviceaccount \
  --region=us-east-1 \
  --cluster=training-eks-juno \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --attach-policy-arn=arn:aws:iam::883388690928:policy/AWSLoadBalancerControllerIAMPolicy \
  --override-existing-serviceaccounts \
  --profile=onb \
  --approve

  eksctl create iamserviceaccount \
      --region region-code \
      --name alb-ingress-controller \
      --namespace kube-system \
      --cluster prod \
      --attach-policy-arn arn:aws:iam::111122223333:policy/ALBIngressControllerIAMPolicy \
      --override-existing-serviceaccounts \
      --approve
