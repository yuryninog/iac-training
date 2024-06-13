resource "local_file" "foo" {
  content   = "Hello World!"
  filename  = "delete_me.txt"
}

output "filename" {
  value   = local_file.foo.filename
}
