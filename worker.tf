resource "aws_instance" "ec2-kub-worker" {
  ami = var.ec2_ami
  instance_type = "t2.micro"
 tags = {
    Name = "worker"
  }
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.worker_node_sg.id]
  key_name = "prakriti-linkedtoworld"
  user_data = <<-EOF
     #!/bin/bash
     yum install docker -y
     systemctl enable docker
     systemctl restart docker
     cat <<EOF1 > /etc/yum.repos.d/kubernetes.repo
     [kubernetes]
     name=Kubernetes
     baseurl=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/
     enabled=1
     gpgcheck=1
     gpgkey=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/repodata/repomd.xml.key
     exclude=kubelet kubeadm kubectl
     EOF1
     yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
     systemctl enable kubelet
     systemctl start kubelet
     EOF
}
