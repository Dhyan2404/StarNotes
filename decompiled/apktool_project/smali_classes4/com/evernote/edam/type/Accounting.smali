.class public Lcom/evernote/edam/type/Accounting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/type/Accounting;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __BUSINESSID_ISSET_ID:I = 0xb

.field private static final __LASTFAILEDCHARGE_ISSET_ID:I = 0x5

.field private static final __LASTREQUESTEDCHARGE_ISSET_ID:I = 0x9

.field private static final __LASTSUCCESSFULCHARGE_ISSET_ID:I = 0x4

.field private static final __NEXTCHARGEDATE_ISSET_ID:I = 0xd

.field private static final __NEXTPAYMENTDUE_ISSET_ID:I = 0x6

.field private static final __PREMIUMLOCKUNTIL_ISSET_ID:I = 0x7

.field private static final __PREMIUMSERVICESTART_ISSET_ID:I = 0x3

.field private static final __UNITDISCOUNT_ISSET_ID:I = 0xc

.field private static final __UNITPRICE_ISSET_ID:I = 0xa

.field private static final __UPDATED_ISSET_ID:I = 0x8

.field private static final __UPLOADLIMITEND_ISSET_ID:I = 0x1

.field private static final __UPLOADLIMITNEXTMONTH_ISSET_ID:I = 0x2

.field private static final __UPLOADLIMIT_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private businessId:I

.field private businessName:Ljava/lang/String;

.field private businessRole:Lcom/evernote/edam/type/BusinessUserRole;

.field private currency:Ljava/lang/String;

.field private lastFailedCharge:J

.field private lastFailedChargeReason:Ljava/lang/String;

.field private lastRequestedCharge:J

.field private lastSuccessfulCharge:J

.field private nextChargeDate:J

.field private nextPaymentDue:J

.field private premiumCommerceService:Ljava/lang/String;

.field private premiumLockUntil:J

.field private premiumOrderNumber:Ljava/lang/String;

.field private premiumServiceSKU:Ljava/lang/String;

.field private premiumServiceStart:J

.field private premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

.field private premiumSubscriptionNumber:Ljava/lang/String;

.field private unitDiscount:I

.field private unitPrice:I

.field private updated:J

.field private uploadLimit:J

.field private uploadLimitEnd:J

.field private uploadLimitNextMonth:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Accounting"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "uploadLimit"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "uploadLimitEnd"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "uploadLimitNextMonth"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x4

    const-string v2, "premiumServiceStatus"

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x5

    const-string v2, "premiumOrderNumber"

    const/16 v5, 0xb

    invoke-direct {v0, v2, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumCommerceService"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumServiceStart"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumServiceSKU"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastSuccessfulCharge"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastFailedCharge"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastFailedChargeReason"

    invoke-direct {v0, v1, v5, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "nextPaymentDue"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumLockUntil"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumSubscriptionNumber"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastRequestedCharge"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "currency"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "unitPrice"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessId"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessRole"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "unitDiscount"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "nextChargeDate"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Accounting;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    .line 7
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    .line 8
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    .line 9
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 15
    :cond_2
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 18
    :cond_3
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    .line 19
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    .line 20
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 22
    :cond_4
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    .line 23
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    .line 24
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->updated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 27
    :cond_5
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 30
    :cond_6
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    .line 31
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->businessId:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    .line 32
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 34
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 36
    :cond_8
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    .line 37
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/Accounting;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    .line 33
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    return v0

    .line 34
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    .line 35
    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iget-wide v2, p1, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_20

    return v0

    .line 36
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21

    return v0

    .line 37
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    return v0

    .line 38
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_23

    return v0

    .line 39
    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    iget v1, p1, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    .line 40
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    .line 41
    :cond_25
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    iget v1, p1, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_26

    return v0

    .line 42
    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_27

    return v0

    .line 43
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    return v0

    .line 44
    :cond_28
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_29

    return v0

    .line 45
    :cond_29
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v1, p1, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2a

    return v0

    .line 46
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2b

    return v0

    .line 47
    :cond_2b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    iget v1, p1, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_2c

    return v0

    .line 48
    :cond_2c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2d

    return v0

    .line 49
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    iget-wide p0, p1, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-static {v0, v1, p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result p0

    if-eqz p0, :cond_2e

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/Accounting;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->compareTo(Lcom/evernote/edam/type/Accounting;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/Accounting;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/Accounting;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/Accounting;-><init>(Lcom/evernote/edam/type/Accounting;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->deepCopy()Lcom/evernote/edam/type/Accounting;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/Accounting;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_46

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_46

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_46

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_46

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_46

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_46

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_46

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_46

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_46

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_46

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_46

    if-nez v2, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_46

    if-nez v2, :cond_23

    goto/16 :goto_0

    .line 38
    :cond_23
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_46

    if-nez v2, :cond_26

    goto/16 :goto_0

    .line 41
    :cond_26
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_46

    if-nez v2, :cond_29

    goto/16 :goto_0

    .line 44
    :cond_29
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->updated:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2a

    return v0

    .line 45
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v2

    if-nez v1, :cond_2b

    if-eqz v2, :cond_2d

    :cond_2b
    if-eqz v1, :cond_46

    if-nez v2, :cond_2c

    goto/16 :goto_0

    .line 47
    :cond_2c
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v0

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v2

    if-nez v1, :cond_2e

    if-eqz v2, :cond_30

    :cond_2e
    if-eqz v1, :cond_46

    if-nez v2, :cond_2f

    goto/16 :goto_0

    .line 50
    :cond_2f
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iget-wide v3, p1, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_30

    return v0

    .line 51
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v2

    if-nez v1, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-eqz v1, :cond_46

    if-nez v2, :cond_32

    goto/16 :goto_0

    .line 53
    :cond_32
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v0

    .line 54
    :cond_33
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v2

    if-nez v1, :cond_34

    if-eqz v2, :cond_36

    :cond_34
    if-eqz v1, :cond_46

    if-nez v2, :cond_35

    goto/16 :goto_0

    .line 56
    :cond_35
    iget v1, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    iget v2, p1, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    if-eq v1, v2, :cond_36

    return v0

    .line 57
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v2

    if-nez v1, :cond_37

    if-eqz v2, :cond_39

    :cond_37
    if-eqz v1, :cond_46

    if-nez v2, :cond_38

    goto/16 :goto_0

    .line 59
    :cond_38
    iget v1, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    iget v2, p1, Lcom/evernote/edam/type/Accounting;->businessId:I

    if-eq v1, v2, :cond_39

    return v0

    .line 60
    :cond_39
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v2

    if-nez v1, :cond_3a

    if-eqz v2, :cond_3c

    :cond_3a
    if-eqz v1, :cond_46

    if-nez v2, :cond_3b

    goto :goto_0

    .line 62
    :cond_3b
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v0

    .line 63
    :cond_3c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v1

    .line 64
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v2

    if-nez v1, :cond_3d

    if-eqz v2, :cond_3f

    :cond_3d
    if-eqz v1, :cond_46

    if-nez v2, :cond_3e

    goto :goto_0

    .line 65
    :cond_3e
    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v0

    .line 66
    :cond_3f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v2

    if-nez v1, :cond_40

    if-eqz v2, :cond_42

    :cond_40
    if-eqz v1, :cond_46

    if-nez v2, :cond_41

    goto :goto_0

    .line 68
    :cond_41
    iget v1, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    iget v2, p1, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    if-eq v1, v2, :cond_42

    return v0

    .line 69
    :cond_42
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v1

    .line 70
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v2

    if-nez v1, :cond_43

    if-eqz v2, :cond_45

    :cond_43
    if-eqz v1, :cond_46

    if-nez v2, :cond_44

    goto :goto_0

    .line 71
    :cond_44
    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    iget-wide p0, p1, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    cmp-long p0, v1, p0

    if-eqz p0, :cond_45

    return v0

    :cond_45
    const/4 p0, 0x1

    return p0

    :cond_46
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/evernote/edam/type/Accounting;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/Accounting;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->equals(Lcom/evernote/edam/type/Accounting;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getBusinessId()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    return p0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    return-object p0
.end method

.method public getBusinessRole()Lcom/evernote/edam/type/BusinessUserRole;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public getLastFailedCharge()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    return-wide v0
.end method

.method public getLastFailedChargeReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    return-object p0
.end method

.method public getLastRequestedCharge()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    return-wide v0
.end method

.method public getLastSuccessfulCharge()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    return-wide v0
.end method

.method public getNextChargeDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    return-wide v0
.end method

.method public getNextPaymentDue()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    return-wide v0
.end method

.method public getPremiumCommerceService()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    return-object p0
.end method

.method public getPremiumLockUntil()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    return-wide v0
.end method

.method public getPremiumOrderNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPremiumServiceSKU()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    return-object p0
.end method

.method public getPremiumServiceStart()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    return-wide v0
.end method

.method public getPremiumServiceStatus()Lcom/evernote/edam/type/PremiumOrderStatus;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0
.end method

.method public getPremiumSubscriptionNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getUnitDiscount()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    return p0
.end method

.method public getUnitPrice()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    return p0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    return-wide v0
.end method

.method public getUploadLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    return-wide v0
.end method

.method public getUploadLimitEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    return-wide v0
.end method

.method public getUploadLimitNextMonth()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetBusinessId()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xb

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetBusinessName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetBusinessRole()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetCurrency()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLastFailedCharge()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLastFailedChargeReason()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetLastRequestedCharge()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetLastSuccessfulCharge()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNextChargeDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xd

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNextPaymentDue()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumCommerceService()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPremiumLockUntil()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumOrderNumber()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPremiumServiceSKU()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPremiumServiceStart()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumServiceStatus()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPremiumSubscriptionNumber()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUnitDiscount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xc

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUnitPrice()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xa

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUpdated()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUploadLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUploadLimitEnd()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUploadLimitNextMonth()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/BusinessUserRole;->findByValue(I)Lcom/evernote/edam/type/BusinessUserRole;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_8
    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_a
    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    goto/16 :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_b
    if-ne v1, v4, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_c
    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    goto/16 :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_d
    if-ne v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_e
    if-ne v1, v4, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_f
    if-ne v1, v4, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    goto/16 :goto_1

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_10
    if-ne v1, v3, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_11
    if-ne v1, v4, :cond_11

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    goto :goto_1

    :cond_11
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_12
    if-ne v1, v3, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    goto :goto_1

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_13
    if-ne v1, v3, :cond_13

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    goto :goto_1

    :cond_13
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_14
    if-ne v1, v2, :cond_14

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/PremiumOrderStatus;->findByValue(I)Lcom/evernote/edam/type/PremiumOrderStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    goto :goto_1

    :cond_14
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_15
    if-ne v1, v4, :cond_15

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    goto :goto_1

    :cond_15
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_16
    if-ne v1, v4, :cond_16

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    goto :goto_1

    :cond_16
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_17
    if-ne v1, v4, :cond_17

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {p0, v5}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    goto :goto_1

    :cond_17
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBusinessId(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    return-void
.end method

.method public setBusinessIdIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xb

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    return-void
.end method

.method public setBusinessNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setBusinessRole(Lcom/evernote/edam/type/BusinessUserRole;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    return-void
.end method

.method public setBusinessRoleIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    :cond_0
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLastFailedCharge(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    return-void
.end method

.method public setLastFailedChargeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLastFailedChargeReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    return-void
.end method

.method public setLastFailedChargeReasonIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLastRequestedCharge(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    return-void
.end method

.method public setLastRequestedChargeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setLastSuccessfulCharge(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    return-void
.end method

.method public setLastSuccessfulChargeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNextChargeDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    return-void
.end method

.method public setNextChargeDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xd

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNextPaymentDue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    return-void
.end method

.method public setNextPaymentDueIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumCommerceService(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    return-void
.end method

.method public setPremiumCommerceServiceIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPremiumLockUntil(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    return-void
.end method

.method public setPremiumLockUntilIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    return-void
.end method

.method public setPremiumOrderNumberIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPremiumServiceSKU(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    return-void
.end method

.method public setPremiumServiceSKUIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPremiumServiceStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    return-void
.end method

.method public setPremiumServiceStartIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumServiceStatus(Lcom/evernote/edam/type/PremiumOrderStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-void
.end method

.method public setPremiumServiceStatusIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    :cond_0
    return-void
.end method

.method public setPremiumSubscriptionNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    return-void
.end method

.method public setPremiumSubscriptionNumberIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUnitDiscount(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    return-void
.end method

.method public setUnitDiscountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xc

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUnitPrice(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    return-void
.end method

.method public setUnitPriceIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xa

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUploadLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    return-void
.end method

.method public setUploadLimitEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    return-void
.end method

.method public setUploadLimitEndIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUploadLimitIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUploadLimitNextMonth(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    return-void
.end method

.method public setUploadLimitNextMonthIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accounting("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "uploadLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "uploadLimitEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "uploadLimitNextMonth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v3

    const-string v5, "null"

    if-eqz v3, :cond_7

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "premiumServiceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-nez v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "premiumOrderNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "premiumCommerceService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v2

    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "premiumServiceStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "premiumServiceSKU:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-nez v1, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v2

    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v1, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "lastSuccessfulCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v1, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "lastFailedCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v1, :cond_17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "lastFailedChargeReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v2

    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v1, :cond_1a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "nextPaymentDue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v1, :cond_1c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, "premiumLockUntil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-nez v1, :cond_1e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v1, :cond_20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v1, "premiumSubscriptionNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-nez v1, :cond_21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v2

    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v3

    if-eqz v3, :cond_24

    if-nez v1, :cond_23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, "lastRequestedCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v3

    if-eqz v3, :cond_27

    if-nez v1, :cond_25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const-string v1, "currency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-nez v1, :cond_26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v1, v2

    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez v1, :cond_28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "unitPrice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_29
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v1, :cond_2a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const-string v1, "businessId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-nez v1, :cond_2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v1, "businessName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-nez v1, :cond_2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v1, v2

    :cond_2e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v3

    if-eqz v3, :cond_31

    if-nez v1, :cond_2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string v1, "businessRole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-nez v1, :cond_30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    move v1, v2

    :cond_31
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v3

    if-eqz v3, :cond_33

    if-nez v1, :cond_32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const-string v1, "unitDiscount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_33
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v1

    if-eqz v1, :cond_35

    if-nez v2, :cond_34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const-string v1, "nextChargeDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_35
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetBusinessId()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetBusinessName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    return-void
.end method

.method public unsetBusinessRole()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    return-void
.end method

.method public unsetCurrency()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    return-void
.end method

.method public unsetLastFailedCharge()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLastFailedChargeReason()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    return-void
.end method

.method public unsetLastRequestedCharge()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetLastSuccessfulCharge()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNextChargeDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNextPaymentDue()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumCommerceService()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    return-void
.end method

.method public unsetPremiumLockUntil()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumOrderNumber()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    return-void
.end method

.method public unsetPremiumServiceSKU()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    return-void
.end method

.method public unsetPremiumServiceStart()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumServiceStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-void
.end method

.method public unsetPremiumSubscriptionNumber()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    return-void
.end method

.method public unsetUnitDiscount()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUnitPrice()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUploadLimit()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetUploadLimitEnd()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUploadLimitNextMonth()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->validate()V

    sget-object v0, Lcom/evernote/edam/type/Accounting;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-virtual {v0}, Lcom/evernote/edam/type/PremiumOrderStatus;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_f
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/evernote/edam/type/Accounting;->CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_12
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_13
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/BusinessUserRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_16
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
