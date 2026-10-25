variable "enable_apis" {
    type=map(object({
        project = string
        service = list(string)
        disable_on_destroy = bool
    }))
}