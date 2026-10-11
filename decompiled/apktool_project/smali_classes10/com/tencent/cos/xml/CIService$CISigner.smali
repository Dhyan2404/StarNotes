.class Lcom/tencent/cos/xml/CIService$CISigner;
.super Lcom/tencent/qcloud/core/auth/COSXmlSigner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/CIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CISigner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/COSXmlSigner;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/cos/xml/CIService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/cos/xml/CIService$CISigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionTokenKey()Ljava/lang/String;
    .locals 0

    const-string p0, "x-ci-security-token"

    return-object p0
.end method
