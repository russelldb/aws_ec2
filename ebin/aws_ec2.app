{application, aws_ec2,
 [{description,"Aws_ec2 app"},
  {vsn,"1.0"},
  {modules,[aws_ec2,aws_sup,aws_app]},
  {registered,[aws_ec2, aws_sup]},
  {applications,[kernel,stdlib, inets, crypto]},
  {mod,{aws_app,[]}}]}.