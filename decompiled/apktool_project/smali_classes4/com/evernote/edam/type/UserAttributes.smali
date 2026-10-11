.class public Lcom/evernote/edam/type/UserAttributes;
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
        "Lcom/evernote/edam/type/UserAttributes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CLIPFULLPAGE_ISSET_ID:I = 0xb

.field private static final __DAILYEMAILLIMIT_ISSET_ID:I = 0x8

.field private static final __DATEAGREEDTOTERMSOFSERVICE_ISSET_ID:I = 0x3

.field private static final __DEFAULTLATITUDE_ISSET_ID:I = 0x0

.field private static final __DEFAULTLONGITUDE_ISSET_ID:I = 0x1

.field private static final __EDUCATIONALDISCOUNT_ISSET_ID:I = 0xc

.field private static final __EMAILOPTOUTDATE_ISSET_ID:I = 0x9

.field private static final __HIDESPONSORBILLING_ISSET_ID:I = 0xd

.field private static final __MAXREFERRALS_ISSET_ID:I = 0x4

.field private static final __PARTNEREMAILOPTINDATE_ISSET_ID:I = 0xa

.field private static final __PREACTIVATION_ISSET_ID:I = 0x2

.field private static final __REFERRALCOUNT_ISSET_ID:I = 0x5

.field private static final __SENTEMAILCOUNT_ISSET_ID:I = 0x7

.field private static final __SENTEMAILDATE_ISSET_ID:I = 0x6

.field private static final __TAXEXEMPT_ISSET_ID:I = 0xe

.field private static final __USEEMAILAUTOFILING_ISSET_ID:I = 0xf


# instance fields
.field private __isset_vector:[Z

.field private businessAddress:Ljava/lang/String;

.field private clipFullPage:Z

.field private comments:Ljava/lang/String;

.field private dailyEmailLimit:I

.field private dateAgreedToTermsOfService:J

.field private defaultLatitude:D

.field private defaultLocationName:Ljava/lang/String;

.field private defaultLongitude:D

.field private educationalDiscount:Z

.field private emailOptOutDate:J

.field private groupName:Ljava/lang/String;

.field private hideSponsorBilling:Z

.field private incomingEmailAddress:Ljava/lang/String;

.field private maxReferrals:I

.field private partnerEmailOptInDate:J

.field private preactivation:Z

.field private preferredCountry:Ljava/lang/String;

.field private preferredLanguage:Ljava/lang/String;

.field private recentMailedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recognitionLanguage:Ljava/lang/String;

.field private refererCode:Ljava/lang/String;

.field private referralCount:I

.field private referralProof:Ljava/lang/String;

.field private reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

.field private sentEmailCount:I

.field private sentEmailDate:J

.field private taxExempt:Z

.field private twitterId:Ljava/lang/String;

.field private twitterUserName:Ljava/lang/String;

.field private useEmailAutoFiling:Z

.field private viewedPromotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "UserAttributes"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "defaultLocationName"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultLatitude"

    const/4 v2, 0x4

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultLongitude"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preactivation"

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x5

    const-string v2, "viewedPromotions"

    const/16 v5, 0xf

    invoke-direct {v0, v2, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "incomingEmailAddress"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recentMailedAddresses"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "comments"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "dateAgreedToTermsOfService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0xc

    const-string v6, "maxReferrals"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "referralCount"

    const/16 v6, 0xd

    invoke-direct {v0, v1, v7, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "refererCode"

    const/16 v6, 0xe

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sentEmailDate"

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sentEmailCount"

    const/16 v5, 0x10

    invoke-direct {v0, v1, v7, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "dailyEmailLimit"

    const/16 v5, 0x11

    invoke-direct {v0, v1, v7, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "emailOptOutDate"

    const/16 v5, 0x12

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "partnerEmailOptInDate"

    const/16 v5, 0x13

    invoke-direct {v0, v1, v2, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preferredLanguage"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preferredCountry"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "clipFullPage"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "twitterUserName"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "twitterId"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "groupName"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recognitionLanguage"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "referralProof"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "educationalDiscount"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessAddress"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "hideSponsorBilling"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "taxExempt"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "useEmailAutoFiling"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderEmailConfig"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/UserAttributes;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 8
    :cond_0
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    .line 9
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    .line 10
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    .line 11
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_4
    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 25
    :cond_6
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    .line 26
    iget v0, p1, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    .line 27
    iget v0, p1, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 30
    :cond_7
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    .line 31
    iget v0, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    .line 32
    iget v0, p1, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    .line 33
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    .line 34
    iget-wide v0, p1, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    .line 35
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 39
    :cond_9
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 42
    :cond_a
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 44
    :cond_b
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 48
    :cond_d
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 50
    :cond_e
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    .line 51
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 52
    iget-object v0, p1, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 53
    :cond_f
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    .line 54
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    .line 55
    iget-boolean v0, p1, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    .line 56
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    iget-object p1, p1, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    :cond_10
    return-void
.end method


# virtual methods
.method public addToRecentMailedAddresses(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToViewedPromotions(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    iput v1, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {p0, v1}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    iput-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/UserAttributes;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    iget v1, p1, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iget v1, p1, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 30
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 31
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    iget v1, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    .line 32
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    .line 33
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    iget v1, p1, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_1e

    return v0

    .line 34
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    .line 35
    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_20

    return v0

    .line 36
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_21

    return v0

    .line 37
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_22

    return v0

    .line 38
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_23

    return v0

    .line 39
    :cond_23
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    return v0

    .line 40
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_25

    return v0

    .line 41
    :cond_25
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_26

    return v0

    .line 42
    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_27

    return v0

    .line 43
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_28

    return v0

    .line 44
    :cond_28
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_29

    return v0

    .line 45
    :cond_29
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    return v0

    .line 46
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2b

    return v0

    .line 47
    :cond_2b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2c

    return v0

    .line 48
    :cond_2c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2d

    return v0

    .line 49
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2e

    return v0

    .line 50
    :cond_2e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2f

    return v0

    .line 51
    :cond_2f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_30

    return v0

    .line 52
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_31

    return v0

    .line 53
    :cond_31
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_32

    return v0

    .line 54
    :cond_32
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_33

    return v0

    .line 55
    :cond_33
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_34

    return v0

    .line 56
    :cond_34
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_35

    return v0

    .line 57
    :cond_35
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    return v0

    .line 58
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_37

    return v0

    .line 59
    :cond_37
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_38

    return v0

    .line 60
    :cond_38
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_39

    return v0

    .line 61
    :cond_39
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    .line 62
    :cond_3a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3b

    return v0

    .line 63
    :cond_3b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_3c

    return v0

    .line 64
    :cond_3c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3d

    return v0

    .line 65
    :cond_3d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    iget-object p1, p1, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-eqz p0, :cond_3e

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->compareTo(Lcom/evernote/edam/type/UserAttributes;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/UserAttributes;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/UserAttributes;-><init>(Lcom/evernote/edam/type/UserAttributes;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->deepCopy()Lcom/evernote/edam/type/UserAttributes;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/UserAttributes;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_5e

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_5e

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_5e

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_5e

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_5e

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_5e

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_5e

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_5e

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_5e

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_5e

    if-nez v2, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    iget v2, p1, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_5e

    if-nez v2, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iget v2, p1, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_5e

    if-nez v2, :cond_23

    goto/16 :goto_0

    .line 38
    :cond_23
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_5e

    if-nez v2, :cond_26

    goto/16 :goto_0

    .line 41
    :cond_26
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    return v0

    .line 42
    :cond_27
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v1

    .line 43
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_2a

    :cond_28
    if-eqz v1, :cond_5e

    if-nez v2, :cond_29

    goto/16 :goto_0

    .line 44
    :cond_29
    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    iget v2, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    if-eq v1, v2, :cond_2a

    return v0

    .line 45
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v1

    .line 46
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v2

    if-nez v1, :cond_2b

    if-eqz v2, :cond_2d

    :cond_2b
    if-eqz v1, :cond_5e

    if-nez v2, :cond_2c

    goto/16 :goto_0

    .line 47
    :cond_2c
    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    iget v2, p1, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    if-eq v1, v2, :cond_2d

    return v0

    .line 48
    :cond_2d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v2

    if-nez v1, :cond_2e

    if-eqz v2, :cond_30

    :cond_2e
    if-eqz v1, :cond_5e

    if-nez v2, :cond_2f

    goto/16 :goto_0

    .line 50
    :cond_2f
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_30

    return v0

    .line 51
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v2

    if-nez v1, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-eqz v1, :cond_5e

    if-nez v2, :cond_32

    goto/16 :goto_0

    .line 53
    :cond_32
    iget-wide v1, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_33

    return v0

    .line 54
    :cond_33
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v2

    if-nez v1, :cond_34

    if-eqz v2, :cond_36

    :cond_34
    if-eqz v1, :cond_5e

    if-nez v2, :cond_35

    goto/16 :goto_0

    .line 56
    :cond_35
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v0

    .line 57
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v2

    if-nez v1, :cond_37

    if-eqz v2, :cond_39

    :cond_37
    if-eqz v1, :cond_5e

    if-nez v2, :cond_38

    goto/16 :goto_0

    .line 59
    :cond_38
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v0

    .line 60
    :cond_39
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v2

    if-nez v1, :cond_3a

    if-eqz v2, :cond_3c

    :cond_3a
    if-eqz v1, :cond_5e

    if-nez v2, :cond_3b

    goto/16 :goto_0

    .line 62
    :cond_3b
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    if-eq v1, v2, :cond_3c

    return v0

    .line 63
    :cond_3c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v1

    .line 64
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v2

    if-nez v1, :cond_3d

    if-eqz v2, :cond_3f

    :cond_3d
    if-eqz v1, :cond_5e

    if-nez v2, :cond_3e

    goto/16 :goto_0

    .line 65
    :cond_3e
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v0

    .line 66
    :cond_3f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v2

    if-nez v1, :cond_40

    if-eqz v2, :cond_42

    :cond_40
    if-eqz v1, :cond_5e

    if-nez v2, :cond_41

    goto/16 :goto_0

    .line 68
    :cond_41
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v0

    .line 69
    :cond_42
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v1

    .line 70
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v2

    if-nez v1, :cond_43

    if-eqz v2, :cond_45

    :cond_43
    if-eqz v1, :cond_5e

    if-nez v2, :cond_44

    goto/16 :goto_0

    .line 71
    :cond_44
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v0

    .line 72
    :cond_45
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v1

    .line 73
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v2

    if-nez v1, :cond_46

    if-eqz v2, :cond_48

    :cond_46
    if-eqz v1, :cond_5e

    if-nez v2, :cond_47

    goto/16 :goto_0

    .line 74
    :cond_47
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v0

    .line 75
    :cond_48
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v2

    if-nez v1, :cond_49

    if-eqz v2, :cond_4b

    :cond_49
    if-eqz v1, :cond_5e

    if-nez v2, :cond_4a

    goto/16 :goto_0

    .line 77
    :cond_4a
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v0

    .line 78
    :cond_4b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v1

    .line 79
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v2

    if-nez v1, :cond_4c

    if-eqz v2, :cond_4e

    :cond_4c
    if-eqz v1, :cond_5e

    if-nez v2, :cond_4d

    goto/16 :goto_0

    .line 80
    :cond_4d
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    if-eq v1, v2, :cond_4e

    return v0

    .line 81
    :cond_4e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v1

    .line 82
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v2

    if-nez v1, :cond_4f

    if-eqz v2, :cond_51

    :cond_4f
    if-eqz v1, :cond_5e

    if-nez v2, :cond_50

    goto/16 :goto_0

    .line 83
    :cond_50
    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v0

    .line 84
    :cond_51
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v2

    if-nez v1, :cond_52

    if-eqz v2, :cond_54

    :cond_52
    if-eqz v1, :cond_5e

    if-nez v2, :cond_53

    goto :goto_0

    .line 86
    :cond_53
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    if-eq v1, v2, :cond_54

    return v0

    .line 87
    :cond_54
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v1

    .line 88
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v2

    if-nez v1, :cond_55

    if-eqz v2, :cond_57

    :cond_55
    if-eqz v1, :cond_5e

    if-nez v2, :cond_56

    goto :goto_0

    .line 89
    :cond_56
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    if-eq v1, v2, :cond_57

    return v0

    .line 90
    :cond_57
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v1

    .line 91
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v2

    if-nez v1, :cond_58

    if-eqz v2, :cond_5a

    :cond_58
    if-eqz v1, :cond_5e

    if-nez v2, :cond_59

    goto :goto_0

    .line 92
    :cond_59
    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    if-eq v1, v2, :cond_5a

    return v0

    .line 93
    :cond_5a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v2

    if-nez v1, :cond_5b

    if-eqz v2, :cond_5d

    :cond_5b
    if-eqz v1, :cond_5e

    if-nez v2, :cond_5c

    goto :goto_0

    .line 95
    :cond_5c
    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    iget-object p1, p1, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    return v0

    :cond_5d
    const/4 p0, 0x1

    return p0

    :cond_5e
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
    instance-of v1, p1, Lcom/evernote/edam/type/UserAttributes;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/UserAttributes;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->equals(Lcom/evernote/edam/type/UserAttributes;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getBusinessAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getComments()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    return-object p0
.end method

.method public getDailyEmailLimit()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    return p0
.end method

.method public getDateAgreedToTermsOfService()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    return-wide v0
.end method

.method public getDefaultLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    return-wide v0
.end method

.method public getDefaultLocationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    return-wide v0
.end method

.method public getEmailOptOutDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public getIncomingEmailAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxReferrals()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    return p0
.end method

.method public getPartnerEmailOptInDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    return-wide v0
.end method

.method public getPreferredCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferredLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getRecentMailedAddresses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    return-object p0
.end method

.method public getRecentMailedAddressesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRecentMailedAddressesSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRecognitionLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getRefererCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    return-object p0
.end method

.method public getReferralCount()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    return p0
.end method

.method public getReferralProof()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    return-object p0
.end method

.method public getReminderEmailConfig()Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object p0
.end method

.method public getSentEmailCount()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    return p0
.end method

.method public getSentEmailDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    return-wide v0
.end method

.method public getTwitterId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    return-object p0
.end method

.method public getTwitterUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getViewedPromotions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    return-object p0
.end method

.method public getViewedPromotionsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getViewedPromotionsSize()I
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClipFullPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    return p0
.end method

.method public isEducationalDiscount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    return p0
.end method

.method public isHideSponsorBilling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    return p0
.end method

.method public isPreactivation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    return p0
.end method

.method public isSetBusinessAddress()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetClipFullPage()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xb

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetComments()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetDailyEmailLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetDateAgreedToTermsOfService()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetDefaultLatitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetDefaultLocationName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetDefaultLongitude()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEducationalDiscount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xc

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEmailOptOutDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetGroupName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetHideSponsorBilling()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xd

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncomingEmailAddress()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMaxReferrals()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPartnerEmailOptInDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xa

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPreactivation()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPreferredCountry()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPreferredLanguage()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRecentMailedAddresses()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRecognitionLanguage()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetRefererCode()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetReferralCount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetReferralProof()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetReminderEmailConfig()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSentEmailCount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetSentEmailDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetTaxExempt()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xe

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetTwitterId()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTwitterUserName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetUseEmailAutoFiling()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xf

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetViewedPromotions()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaxExempt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    return p0
.end method

.method public isUseEmailAutoFiling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 10
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

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/16 v8, 0xb

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_1
    if-ne v1, v6, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/ReminderEmailConfig;->findByValue(I)Lcom/evernote/edam/type/ReminderEmailConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    goto/16 :goto_3

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_2
    if-ne v1, v7, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_3
    if-ne v1, v7, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_4
    if-ne v1, v7, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    goto/16 :goto_3

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_5
    if-ne v1, v8, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_6
    if-ne v1, v7, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    goto/16 :goto_3

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_7
    if-ne v1, v8, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_8
    if-ne v1, v8, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_9
    if-ne v1, v8, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_a
    if-ne v1, v8, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_b
    if-ne v1, v8, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_c
    if-ne v1, v7, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    goto/16 :goto_3

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_d
    if-ne v1, v8, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_e
    if-ne v1, v8, :cond_e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_f
    if-ne v1, v5, :cond_f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    goto/16 :goto_3

    :cond_f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_10
    if-ne v1, v5, :cond_10

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    goto/16 :goto_3

    :cond_10
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_11
    if-ne v1, v6, :cond_11

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    goto/16 :goto_3

    :cond_11
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_12
    if-ne v1, v6, :cond_12

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    goto/16 :goto_3

    :cond_12
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_13
    if-ne v1, v5, :cond_13

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    goto/16 :goto_3

    :cond_13
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_14
    if-ne v1, v8, :cond_14

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_15
    if-ne v1, v6, :cond_15

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    goto/16 :goto_3

    :cond_15
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_16
    if-ne v1, v6, :cond_16

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    goto/16 :goto_3

    :cond_16
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_17
    if-ne v1, v5, :cond_17

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    goto/16 :goto_3

    :cond_17
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_18
    if-ne v1, v8, :cond_18

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_19
    if-ne v1, v3, :cond_1a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    :goto_1
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v1, :cond_19

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_19
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_3

    :cond_1a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_1a
    if-ne v1, v8, :cond_1b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_3

    :pswitch_1b
    if-ne v1, v3, :cond_1d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    :goto_2
    iget v1, v0, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v1, :cond_1c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_3

    :cond_1d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_1c
    if-ne v1, v7, :cond_1e

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    goto :goto_3

    :cond_1e
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_1d
    if-ne v1, v4, :cond_1f

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    goto :goto_3

    :cond_1f
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_1e
    if-ne v1, v4, :cond_20

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {p0, v9}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    goto :goto_3

    :cond_20
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_3

    :pswitch_1f
    if-ne v1, v8, :cond_21

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    goto :goto_3

    :cond_21
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
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
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBusinessAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    return-void
.end method

.method public setBusinessAddressIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setClipFullPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    return-void
.end method

.method public setClipFullPageIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xb

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    return-void
.end method

.method public setCommentsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDailyEmailLimit(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    return-void
.end method

.method public setDailyEmailLimitIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setDateAgreedToTermsOfService(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    return-void
.end method

.method public setDateAgreedToTermsOfServiceIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setDefaultLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    return-void
.end method

.method public setDefaultLatitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setDefaultLocationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    return-void
.end method

.method public setDefaultLocationNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDefaultLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    return-void
.end method

.method public setDefaultLongitudeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEducationalDiscount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    return-void
.end method

.method public setEducationalDiscountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xc

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEmailOptOutDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    return-void
.end method

.method public setEmailOptOutDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setHideSponsorBilling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    return-void
.end method

.method public setHideSponsorBillingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xd

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncomingEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setIncomingEmailAddressIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setMaxReferrals(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    return-void
.end method

.method public setMaxReferralsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPartnerEmailOptInDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    return-void
.end method

.method public setPartnerEmailOptInDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xa

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPreactivation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    return-void
.end method

.method public setPreactivationIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPreferredCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    return-void
.end method

.method public setPreferredCountryIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPreferredLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    return-void
.end method

.method public setPreferredLanguageIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRecentMailedAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    return-void
.end method

.method public setRecentMailedAddressesIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setRecognitionLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    return-void
.end method

.method public setRecognitionLanguageIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRefererCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    return-void
.end method

.method public setRefererCodeIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setReferralCount(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    return-void
.end method

.method public setReferralCountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setReferralProof(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    return-void
.end method

.method public setReferralProofIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setReminderEmailConfig(Lcom/evernote/edam/type/ReminderEmailConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-void
.end method

.method public setReminderEmailConfigIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    :cond_0
    return-void
.end method

.method public setSentEmailCount(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    return-void
.end method

.method public setSentEmailCountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setSentEmailDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    return-void
.end method

.method public setSentEmailDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setTaxExempt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    return-void
.end method

.method public setTaxExemptIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xe

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setTwitterId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    return-void
.end method

.method public setTwitterIdIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTwitterUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    return-void
.end method

.method public setTwitterUserNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUseEmailAutoFiling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    return-void
.end method

.method public setUseEmailAutoFilingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xf

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setViewedPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    return-void
.end method

.method public setViewedPromotionsIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserAttributes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v1

    const-string v2, "null"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "defaultLocationName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "defaultLatitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "defaultLongitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "preactivation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "viewedPromotions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v3

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v1, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "incomingEmailAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v3

    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v1, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "recentMailedAddresses:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v3

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v4

    if-eqz v4, :cond_13

    if-nez v1, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "comments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-nez v1, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v3

    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v4

    if-eqz v4, :cond_15

    if-nez v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "dateAgreedToTermsOfService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "maxReferrals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, "referralCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v1, :cond_1a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "refererCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-nez v1, :cond_1b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v3

    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v4

    if-eqz v4, :cond_1e

    if-nez v1, :cond_1d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "sentEmailDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v4

    if-eqz v4, :cond_20

    if-nez v1, :cond_1f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v1, "sentEmailCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v4

    if-eqz v4, :cond_22

    if-nez v1, :cond_21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "dailyEmailLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v4

    if-eqz v4, :cond_24

    if-nez v1, :cond_23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, "emailOptOutDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez v1, :cond_25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const-string v1, "partnerEmailOptInDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez v1, :cond_27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const-string v1, "preferredLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-nez v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v1, v3

    :cond_29
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v4

    if-eqz v4, :cond_2c

    if-nez v1, :cond_2a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const-string v1, "preferredCountry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-nez v1, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v1, v3

    :cond_2c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v4

    if-eqz v4, :cond_2e

    if-nez v1, :cond_2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v1, "clipFullPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_2e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v4

    if-eqz v4, :cond_31

    if-nez v1, :cond_2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string v1, "twitterUserName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-nez v1, :cond_30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v1, v3

    :cond_31
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v4

    if-eqz v4, :cond_34

    if-nez v1, :cond_32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const-string v1, "twitterId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-nez v1, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move v1, v3

    :cond_34
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v4

    if-eqz v4, :cond_37

    if-nez v1, :cond_35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const-string v1, "groupName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    move v1, v3

    :cond_37
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v4

    if-eqz v4, :cond_3a

    if-nez v1, :cond_38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const-string v1, "recognitionLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-nez v1, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    move v1, v3

    :cond_3a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v4

    if-eqz v4, :cond_3d

    if-nez v1, :cond_3b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    const-string v1, "referralProof:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-nez v1, :cond_3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    move v1, v3

    :cond_3d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v4

    if-eqz v4, :cond_3f

    if-nez v1, :cond_3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    const-string v1, "educationalDiscount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_3f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v4

    if-eqz v4, :cond_42

    if-nez v1, :cond_40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const-string v1, "businessAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-nez v1, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    move v1, v3

    :cond_42
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v1, :cond_43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const-string v1, "hideSponsorBilling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_44
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v4

    if-eqz v4, :cond_46

    if-nez v1, :cond_45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v1, "taxExempt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_46
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v4

    if-eqz v4, :cond_48

    if-nez v1, :cond_47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    const-string v1, "useEmailAutoFiling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_48
    move v3, v1

    :goto_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-nez v3, :cond_49

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    const-string v1, "reminderEmailConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-nez p0, :cond_4a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_4a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4b
    :goto_10
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetBusinessAddress()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    return-void
.end method

.method public unsetClipFullPage()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetComments()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    return-void
.end method

.method public unsetDailyEmailLimit()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetDateAgreedToTermsOfService()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetDefaultLatitude()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetDefaultLocationName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    return-void
.end method

.method public unsetDefaultLongitude()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEducationalDiscount()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEmailOptOutDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetGroupName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    return-void
.end method

.method public unsetHideSponsorBilling()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncomingEmailAddress()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public unsetMaxReferrals()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPartnerEmailOptInDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPreactivation()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPreferredCountry()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    return-void
.end method

.method public unsetPreferredLanguage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    return-void
.end method

.method public unsetRecentMailedAddresses()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    return-void
.end method

.method public unsetRecognitionLanguage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    return-void
.end method

.method public unsetRefererCode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    return-void
.end method

.method public unsetReferralCount()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetReferralProof()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    return-void
.end method

.method public unsetReminderEmailConfig()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-void
.end method

.method public unsetSentEmailCount()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetSentEmailDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetTaxExempt()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xe

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetTwitterId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    return-void
.end method

.method public unsetTwitterUserName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    return-void
.end method

.method public unsetUseEmailAutoFiling()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v0, 0xf

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetViewedPromotions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->validate()V

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    const/16 v1, 0xb

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    new-instance v0, Lcom/evernote/thrift/protocol/TList;

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_12
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_13
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_15
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_16
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_17
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_18
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_19
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1b
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1f
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/evernote/edam/type/UserAttributes;->REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {p0}, Lcom/evernote/edam/type/ReminderEmailConfig;->getValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_20
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
