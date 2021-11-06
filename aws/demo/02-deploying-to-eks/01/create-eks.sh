#!/bin/bash

eksctl create cluster \
  --name training-eks3-juno \
  --region us-east-1 \
  --zones us-east-1a,us-east-1b \
  --version 1.21 \
  --fargate \
  --profile onb

eksctl utils associate-iam-oidc-provider --cluster training-eks3-juno --approve --profile onb
