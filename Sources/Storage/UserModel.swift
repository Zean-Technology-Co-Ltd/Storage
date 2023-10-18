//
//  UserModel.swift
//  
//
//  Created by Q Z on 2023/10/18.
//

import Foundation

open class AuthorizedWrapper: NSObject, Codable {
    var token: TokenResponseModel?
    var user: User?
    var oauthUser: OauthUser?
    
    init(token: TokenResponseModel? = nil, user: User? = nil, oauthUser: OauthUser? = nil) {
        self.token = token
        self.user = user
        self.oauthUser = oauthUser
    }
}

open class TokenResponseModel: NSObject, Codable, JSONSerializable {
    let jti: String?
    let token_type: String?
    let scope: String?
    let refresh_token: String?
    let username: String?
    let authenticationIdentity: String?
    let memberId: String?
    let access_token: String?
    let expires_in: Int?
}

open class User: NSObject, Codable, JSONSerializable {
    let id: String?
    let nickName: String?
    let mobile: String?
    let balance: String?
    let avatarUrl: String?
    let cardNo: String?
    let realName: String?
    // 优惠券
    let validCouponCount: String?
}


open class OauthUser: NSObject, Codable, JSONSerializable {
    let id, memberId: String?
    var cardNo, cardType, realName: String?
    var consigneeName: String? // 收货人姓名
    var province, city, area, detailAddress: String?
    /// 在租数量
    var underLeaseNum: String?
    /// 工作单位
    var workAddress: String?
    var cardFrontImage, cardBackImage: String?
    var zmScoreFileUrl: String?
    var defaulted: String? // 是否默认地址(1:是;0:否)
    var isCreditInvestigation: Bool? //  同意查征信报告，网信报告
    var isAgreement: Bool? // 同意《个人信息收集使用》《数字证书授权使用》
    /// <- 基本信息审核结果0初始化，1身份证未认证，2基础信息未完善，4信息完整
    var applyState: Int?
    var isToFace: Bool?
    /// <- 芝麻证 -1:审核失败，0：审核中，1：审核通过
    var roughScore: Int?
    /// 芝麻积分
    var zmScore: Int?
    var skyScore: Int?
    /// 紧急联系人认证状态 1成功
    var emergentAuth: Int?
    var emergentRelation1, emergentPhone1, emergentName1, emergentCard1, emergentRelation2, emergentPhone2: String?
    init(id: String?,
         memberId: String? = nil,
         cardNo: String? = nil,
         cardType: String? = nil,
         realName: String? = nil,
         consigneeName: String? = nil,
         province: String? = nil,
         city: String? = nil,
         area: String? = nil,
         detailAddress: String? = nil,
         cardFrontImage: String? = nil,
         cardBackImage: String? = nil,
         zmScoreFileUrl: String? = nil,
         underLeaseNum: String? = nil,
         defaulted: String? = nil,
         isCreditInvestigation: Bool? = nil,
         isAgreement: Bool? = nil,
         applyState: Int? = nil,
         isToFace: Bool? = nil,
         roughScore: Int? = nil,
         zmScore: Int? = nil,
         skyScore: Int? = nil,
         emergentAuth: Int? = nil,
         emergentRelation1: String? = nil,
         emergentPhone1: String? = nil,
         emergentName1: String? = nil,
         emergentCard1: String? = nil,
         emergentRelation2: String? = nil,
         emergentPhone2: String? = nil) {
        self.id = id
        self.memberId = memberId
        self.cardNo = cardNo
        self.cardType = cardType
        self.realName = realName
        self.consigneeName = consigneeName
        self.province = province
        self.city = city
        self.area = area
        self.detailAddress = detailAddress
        self.cardFrontImage = cardFrontImage
        self.cardBackImage = cardBackImage
        self.zmScoreFileUrl = zmScoreFileUrl
        self.defaulted = defaulted
        self.isCreditInvestigation = isCreditInvestigation
        self.isAgreement = isAgreement
        self.applyState = applyState
        self.isToFace = isToFace
        self.roughScore = roughScore
        self.zmScore = zmScore
        self.skyScore = skyScore
        self.emergentAuth = emergentAuth
        self.emergentRelation1 = emergentRelation1
        self.emergentPhone1 = emergentPhone1
        self.emergentName1 = emergentName1
        self.emergentCard1 = emergentCard1
        self.emergentRelation2 = emergentRelation2
        self.emergentPhone2 = emergentPhone2
        self.underLeaseNum = underLeaseNum
    }
}
