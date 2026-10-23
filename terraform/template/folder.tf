
/*module "apis" {
    source = "../modules/api_enable"
    enable_api = false
}*/
module "folder1" {
    source = "../modules/folder"
    folder_name = "dev-infra"
    org_id = "1041219344622"
}