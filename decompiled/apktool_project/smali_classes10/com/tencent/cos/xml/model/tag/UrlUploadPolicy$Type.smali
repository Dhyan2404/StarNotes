.class public final enum Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

.field public static final enum ENTIRETY:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

.field public static final enum NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

.field public static final enum RANGE:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    const-string v1, "NOTSUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    const-string v2, "RANGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->RANGE:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    new-instance v2, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    const-string v3, "ENTIRETY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->ENTIRETY:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->$VALUES:[Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->$VALUES:[Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    return-object v0
.end method
