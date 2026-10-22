variable "enable_apis" {
    type=map(object({
        project = string
        service = list(strings)
        disable_on_destroy = false
    }))
}