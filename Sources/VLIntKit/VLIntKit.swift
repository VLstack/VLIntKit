import Foundation
import VLBundleKit

extension Int
{
 public func toMinutes(short shortFormat: String? = nil,
                       full fullFormat: String? = nil,
                       compact: Bool = false) -> String
 {
  guard self > 60
  else
  {
   let format = shortFormat ?? Bundle.main.localizedString(compact ? "I18N-VLIntKit.shortFormatCompact" : "I18N-VLIntKit.shortFormat",
                                                           fallbackModule: .module)

   return String(format: format, self)
  }

  let format = fullFormat ?? Bundle.main.localizedString(compact ? "I18N-VLIntKit.fullFormatCompact" : "I18N-VLIntKit.fullFormat",
                                                         fallbackModule: .module)
  let hours = self / 60
  let minutes = self % 60

  return String(format: format, hours, minutes)
 }

 var asHHmm: String
 {
  let hour = self / 3600
  let minute = self / 60 % 60

  return String(format: "%02i:%02i", hour, minute)
 }

 var asHHmmss: String
 {
  let hour = self / 3600
  let minute = self / 60 % 60
  let second = self % 60

  return String(format: "%02i:%02i:%02i", hour, minute, second)
 }

 @available(*, deprecated, message: ".minutesFormatted is deprecated, use .toMinutes(compact: true) instead")
 var minutesFormatted: String
 {
  self.toMinutes(compact: true)
 }

 @available(*, deprecated, message: ".toMinutes(shortFormat:) is deprecated, use .toMinutes(short:) instead")
 func toMinutes(shortFormat: String = "min.") -> String
 {
  self.toMinutes(short: shortFormat)
 }
}
