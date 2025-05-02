data "local_file" "joo" {
  filename = "${path.module}/demo.txt"
}

output "data" {
  value = data.local_file.joo.content
}