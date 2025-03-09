provider "aws" {
  profile = "WW-TEST"
  default_tags {
    ## Application = "TA 시스템 코드"
    ## Environment = "Prd, Dr, Test, Dev"
    ## Creator = "Email, User Name or Tearm Name"(리소스 생성자(팀) 명시(운영자/MSP등)
    ## Owner = "Email, User Name or Tearm Name"(서비스 관리자(팀) 명시)
    ## Backup = "None, Daily, Weekly, Monthly"
    tags = {
      # Application = "api",
      # Environment = "Prd",
      # Creator     = "",
      # Backup      = ""
      Owner       = "Seung Joon",
      Validation = "Traffic Mirroring"
    }
  }
}