#!/bin/sh

NAMESPACE="backstage"

kubectl delete secret postgres-secret -n $NAMESPACE

kubectl create secret generic postgres-secret \
  --namespace $NAMESPACE \
  --from-literal=POSTGRES_USER=$POSTGRES_USER \
  --from-literal=POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
  --from-literal=POSTGRES_DB=$POSTGRES_DB
