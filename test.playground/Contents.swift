//: Playground - noun: a place where people can play

import Cocoa
import CryptoSwift

var str = "Hello, playground"


let addrTypeIPv4:CChar   = 0x01
let addrTypeIPv6:CChar   = 0x03
let addrTypeDomain:CChar = 0x02

let CmdTCP:CChar = 0x01
let CmdUDP:CChar = 0x02

let Version:CChar = 0x01

let OptionChunk:CChar = 0x01

let  blockSize:CChar = 16


class VMessRequest {
    var Version :CChar = 1
    var User:String = ""
    var RequestIV:NSData = NSData()
    var RequestKey: NSData = NSData()
    var ResponseHeader:CChar = 0
    var Command     :CChar = 0
    var Option      :CChar = 0
    var Address     :UInt32 = 0
    var Port        :UInt16  = 0
}

func test() {
    let key:[UInt8] = []
    let msg:[UInt8] = []
    let expectedMac:[UInt8] = [0x74,0xe6,0xf7,0x29,0x8a,0x9c,0x2d,0x16,0x89,0x35,0xf5,0x8c,0x00,0x1b,0xad,0x88]
    
    let hmac = try! Authenticator.HMAC(key: key, variant: .md5).authenticate(msg)

}
//#include <errno.h>
//#include <sys/sysctl.h>

//char str[256];
//size_t size = sizeof(str);

//public func sysctlbyname(_: UnsafePointer<Int8>, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>, _: UnsafeMutablePointer<Void>, _: Int) -> Int32


//test()