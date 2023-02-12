import UIKit

func compactarNumero(valor: Int) -> String {
    
    if valor > 0 && valor < 999 {
        return "\(valor)"
    }
    if valor > 999 && valor < 999000 {
        let result = valor
        let aux =  Double(result) / 1000
        return "\(aux.kValue())K"
    }
    if valor > 999000 {
        let result = valor
        let aux = Double(result) / 1000000
        return "\(aux.kValue())M"
    }
    return ""
}
extension Double {
    func kValue() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
        formatter.roundingMode = .down
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
print(compactarNumero(valor: 50)) // 50
print(compactarNumero(valor: 876)) // 876
print(compactarNumero(valor: 1000)) // 1k
print(compactarNumero(valor: 4321)) // 4.3k
print(compactarNumero(valor: 1000000)) // 1M
print(compactarNumero(valor: 7654321)) // 7.6M

