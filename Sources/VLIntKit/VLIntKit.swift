import Foundation

public extension Int
{
 var minutesFormatted: String
 {
  let hours = self / 60
  let minutes = self % 60
  
  if hours > 0
  {
   return String(format: "%dh%02d", hours, minutes)
  }
  
  return String(format: "%dmin", minutes)
 }
 
 var asHHmmss: String
 {
  let hour = self / 3600
  let minute = self / 60 % 60
  let second = self % 60

  return String(format: "%02i:%02i:%02i", hour, minute, second)
 }
}

