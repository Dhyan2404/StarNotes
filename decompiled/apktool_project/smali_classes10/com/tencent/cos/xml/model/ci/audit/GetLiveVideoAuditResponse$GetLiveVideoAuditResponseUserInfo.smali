.class public Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLiveVideoAuditResponseUserInfo"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public iP:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public receiveTokenId:Ljava/lang/String;

.field public role:Ljava/lang/String;

.field public room:Ljava/lang/String;

.field public tokenId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
