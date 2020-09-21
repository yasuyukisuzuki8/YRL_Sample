//
//  YRL_SampleTests.swift
//  YRL_SampleTests
//
//  Created by Yasuyuki Suzuki on 2020/05/09.
//  Copyright © 2020 Yasuyuki Suzuki. All rights reserved.
//

import XCTest
@testable import YRL_Sample

class YRL_SampleTests: XCTestCase {

    func testFlowerInitializerSucceeds() {
        let roseFlower = Flower.init(name: "Rose", photo: nil, photograper: nil)
        XCTAssertNotNil(roseFlower)
        
        let gerberaImage = UIImage(named: "flower1")
        let gerberaFlower = Flower.init(name: "Gerbera", photo: gerberaImage, photograper: "Andrew Small")
        XCTAssertNotNil(gerberaFlower)
        XCTAssert(gerberaFlower?.photographer == "Andrew Small")
    }
    
    func testFlowerInitializerFails() {
        let nilFlower = Flower.init(name: "", photo: nil, photograper: nil)
        XCTAssertNil(nilFlower)
    }
}
