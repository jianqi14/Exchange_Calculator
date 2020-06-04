//
//  ConvertResponse swift
//  exchangeRateCalculator
//
//  Created by Jian Qi on  / /
//  Copyright ©      Jian Qi  All rights reserved
//

import Foundation

let url = "http://data.fixer.io/api/latest?access_key=1aa05abc802308a285acfb75012b7d22&format=1"

struct Response: Codable {
    let success: Bool
    let timestamp: Int
    let rates: Rates
}

struct Rates: Codable {
    let AED: Float
    let AFN: Float
    let ALL: Float
    let AMD: Float
    let ANG: Float
    let AOA: Float
    let ARS: Float
    let AUD: Float
    let AWG: Float
    let AZN: Float
    let BAM: Float
    let BBD: Float
    let BDT: Float
    let BGN: Float
    let BHD: Float
    let BIF: Float
    let BMD: Float
    let BND: Float
    let BOB: Float
    let BRL: Float
    let BSD: Float
    let BTC: Float
    let BTN: Float
    let BWP: Float
    let BYN: Float
    let BYR: Float
    let BZD: Float
    let CAD: Float
    let CDF: Float
    let CHF: Float
    let CLF: Float
    let CLP: Float
    let CNY: Float
    let COP: Float
    let CRC: Float
    let CUC: Float
    let CUP: Float
    let CVE: Float
    let CZK: Float
    let DJF: Float
    let DKK: Float
    let DOP: Float
    let DZD: Float
    let EGP: Float
    let ERN: Float
    let ETB: Float
    let EUR: Float
    let FJD: Float
    let FKP: Float
    let GBP: Float
    let GEL: Float
    let GGP: Float
    let GHS: Float
    let GIP: Float
    let GMD: Float
    let GNF: Float
    let GTQ: Float
    let GYD: Float
    let HKD: Float
    let HNL: Float
    let HRK: Float
    let HTG: Float
    let HUF: Float
    let IDR: Float
    let ILS: Float
    let IMP: Float
    let INR: Float
    let IQD: Float
    let IRR: Float
    let ISK: Float
    let JEP: Float
    let JMD: Float
    let JOD: Float
    let JPY: Float
    let KES: Float
    let KGS: Float
    let KHR: Float
    let KMF: Float
    let KPW: Float
    let KRW: Float
    let KWD: Float
    let KYD: Float
    let KZT: Float
    let LAK: Float
    let LBP: Float
    let LKR: Float
    let LRD: Float
    let LSL: Float
    let LTL: Float
    let LVL: Float
    let LYD: Float
    let MAD: Float
    let MDL: Float
    let MGA: Float
    let MKD: Float
    let MMK: Float
    let MNT: Float
    let MOP: Float
    let MRO: Float
    let MUR: Float
    let MVR: Float
    let MWK: Float
    let MXN: Float
    let MYR: Float
    let MZN: Float
    let NAD: Float
    let NGN: Float
    let NIO: Float
    let NOK: Float
    let NPR: Float
    let NZD: Float
    let OMR: Float
    let PAB: Float
    let PEN: Float
    let PGK: Float
    let PHP: Float
    let PKR: Float
    let PLN: Float
    let PYG: Float
    let QAR: Float
    let RON: Float
    let RSD: Float
    let RUB: Float
    let RWF: Float
    let SAR: Float
    let SBD: Float
    let SCR: Float
    let SDG: Float
    let SEK: Float
    let SGD: Float
    let SHP: Float
    let SLL: Float
    let SOS: Float
    let SRD: Float
    let STD: Float
    let SVC: Float
    let SYP: Float
    let SZL: Float
    let THB: Float
    let TJS: Float
    let TMT: Float
    let TND: Float
    let TOP: Float
    let TRY: Float
    let TTD: Float
    let TWD: Float
    let TZS: Float
    let UAH: Float
    let UGX: Float
    let USD: Float
    let UYU: Float
    let UZS: Float
    let VEF: Float
    let VND: Float
    let VUV: Float
    let WST: Float
    let XAF: Float
    let XAG: Float
    let XAU: Float
    let XCD: Float
    let XDR: Float
    let XOF: Float
    let XPF: Float
    let YER: Float
    let ZAR: Float
    let ZMK: Float
    let ZMW: Float
    let ZWL: Float

}
