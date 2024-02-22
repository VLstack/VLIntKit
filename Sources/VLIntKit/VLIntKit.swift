import Foundation

public
extension Int
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
}

