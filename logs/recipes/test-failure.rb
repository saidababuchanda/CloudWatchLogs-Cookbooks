execute "Install CloudWatch Logs agent" do
  command "/opt/aws/cloudwatch/awslogs-age-setup.py -n -r us-east-1 -c /tmp/cwlogs.cfg"
  not_if { system "pgrep -f aws-logs-agent-setup" }
end