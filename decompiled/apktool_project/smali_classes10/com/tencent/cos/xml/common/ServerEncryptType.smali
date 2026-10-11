.class public final enum Lcom/tencent/cos/xml/common/ServerEncryptType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/common/ServerEncryptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/common/ServerEncryptType;

.field public static final enum NONE:Lcom/tencent/cos/xml/common/ServerEncryptType;

.field public static final enum SSE_C:Lcom/tencent/cos/xml/common/ServerEncryptType;

.field public static final enum SSE_COS:Lcom/tencent/cos/xml/common/ServerEncryptType;

.field public static final enum SSE_KMS:Lcom/tencent/cos/xml/common/ServerEncryptType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/cos/xml/common/ServerEncryptType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/cos/xml/common/ServerEncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/common/ServerEncryptType;->NONE:Lcom/tencent/cos/xml/common/ServerEncryptType;

    new-instance v1, Lcom/tencent/cos/xml/common/ServerEncryptType;

    const/4 v2, 0x1

    const-string v3, "SSE-C"

    const-string v4, "SSE_C"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/cos/xml/common/ServerEncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/common/ServerEncryptType;->SSE_C:Lcom/tencent/cos/xml/common/ServerEncryptType;

    new-instance v2, Lcom/tencent/cos/xml/common/ServerEncryptType;

    const/4 v3, 0x2

    const-string v4, "SSE-COS"

    const-string v5, "SSE_COS"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/cos/xml/common/ServerEncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/common/ServerEncryptType;->SSE_COS:Lcom/tencent/cos/xml/common/ServerEncryptType;

    new-instance v3, Lcom/tencent/cos/xml/common/ServerEncryptType;

    const/4 v4, 0x3

    const-string v5, "SSE-KMS"

    const-string v6, "SSE_KMS"

    invoke-direct {v3, v6, v4, v5}, Lcom/tencent/cos/xml/common/ServerEncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/xml/common/ServerEncryptType;->SSE_KMS:Lcom/tencent/cos/xml/common/ServerEncryptType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tencent/cos/xml/common/ServerEncryptType;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/common/ServerEncryptType;->$VALUES:[Lcom/tencent/cos/xml/common/ServerEncryptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/cos/xml/common/ServerEncryptType;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/common/ServerEncryptType;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/common/ServerEncryptType;->values()[Lcom/tencent/cos/xml/common/ServerEncryptType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/tencent/cos/xml/common/ServerEncryptType;->type:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/common/ServerEncryptType;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/common/ServerEncryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/common/ServerEncryptType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/common/ServerEncryptType;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/ServerEncryptType;->$VALUES:[Lcom/tencent/cos/xml/common/ServerEncryptType;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/common/ServerEncryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/common/ServerEncryptType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/common/ServerEncryptType;->type:Ljava/lang/String;

    return-object p0
.end method
