#Download example wildryde files to machine
#as per https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell
resource "null_resource" "downloadwildrydesfiles" {
  provisioner "local-exec" {
    command     = "Invoke-WebRequest -uri https://github.com/awslabs/aws-serverless-workshops/archive/master.zip -outfile './master.zip'"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}

#unzip wildryde files
resource "null_resource" "unzip" {
  depends_on    = ["null_resource.downloadwildrydesfiles"]
  provisioner "local-exec" {
    command     = "Expand-Archive -Path master.zip -DestinationPath './upload/'"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}

#delete master.zip file
resource "null_resource" "removearchive" {
  depends_on    = ["null_resource.unzip"]
  provisioner "local-exec" {
    command     = "Remove-Item ./master.zip -Force -Confirm:$false"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}
/*
#Create config folder
resource "null_resource" "configfolder" {
  depends_on    = ["null_resource.unzip"]
  provisioner "local-exec" {
    command     = "New-Item -itemtype Directory -Path './config' -Confirm:$false -Force"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}
*/
#move /js/config.js
resource "null_resource" "moveconfigjs" {
  depends_on    = ["null_resource.unzip"]
  provisioner "local-exec" {
    command     = "Move-Item -Path './upload/aws-serverless-workshops-master/WebApplication/1_StaticWebHosting/website/js/config.js' -Destination './upload/config.js' -Confirm:$false -Force"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}