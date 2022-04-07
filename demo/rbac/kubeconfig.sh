
kubectl config set-cluster kubernetes \
  --certificate-authority=/etc/kubernetes/pki/ca.crt \
  --embed-certs=true \
  --server=https://192.168.31.61:6443 \
  --kubeconfig=slash.kubeconfig
 
# 设置客户端认证
kubectl config set-credentials slash \
  --client-key=slash-key.pem \
  --client-certificate=slash.pem \
  --embed-certs=true \
  --kubeconfig=slash.kubeconfig

# 设置默认上下文
kubectl config set-context kubernetes \
  --cluster=kubernetes \
  --user=slash \
  --kubeconfig=slash.kubeconfig

# 设置当前使用配置
kubectl config use-context kubernetes --kubeconfig=slash.kubeconfig


