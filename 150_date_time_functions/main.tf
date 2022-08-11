terraform {}

output "formatdate" {
  value = formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
}

output "formatdate2" {
  value = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2018-01-02T23:12:01Z")
}

output "formatdate3" {
  value = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", "2018-01-02T23:12:01-08:00")
}

output "formatdate4" {
  value = formatdate("MMM DD, YYYY", "2018-01-02T23:12:01Z")
}

output "formatdate5" {
  value = formatdate("HH:mmaa", "2018-01-02T23:12:01Z")
}

output "timeadd" {
  value = timeadd("2018-01-02T23:12:01Z", "10m")
}

output "timestamp" {
  value = timestamp()
}


