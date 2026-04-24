NS="openclaw"
TLS_CERT="$TLS_CERT"
TLS_KEY="$TLS_KEY"

echo "$TLS_CERT" > cert.pem
echo "$TLS_KEY" > key.pem

if kubectl get secret openclaw-tls -n "$NS" &>/dev/null; then
  echo "El secreto ya existe, no se crea"
else
  echo "Creando secreto openclaw-tls"
  kubectl create secret tls openclaw-tls \
    --cert=cert.pem \
    --key=key.pem \
    -n "$NS"
fi

rm cert.pem key.pem
