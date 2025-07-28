resource "null_resource" "run_python_script" {
  provisioner "local-exec" {
    command = "python3 script.py" # Replace 'your_script.py' with your script's name
  }
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "../foo.bar"
}