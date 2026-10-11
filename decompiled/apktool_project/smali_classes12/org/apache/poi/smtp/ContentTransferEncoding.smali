.class public final enum Lorg/apache/poi/smtp/ContentTransferEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/smtp/ContentTransferEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum BASE64:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum BINARY:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum BIT_7:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum BIT_8:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum QUOTED_PRINTABLE:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum UNKNOWN:Lorg/apache/poi/smtp/ContentTransferEncoding;

.field public static final enum X_TOKEN:Lorg/apache/poi/smtp/ContentTransferEncoding;


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentTransferEncoding;->NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v1, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v2, 0x1

    const-string v3, "7bit"

    const-string v4, "BIT_7"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/smtp/ContentTransferEncoding;->BIT_7:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v2, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v3, 0x2

    const-string v4, "8bit"

    const-string v5, "BIT_8"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/smtp/ContentTransferEncoding;->BIT_8:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v3, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v4, 0x3

    const-string v5, "base64"

    const-string v6, "BASE64"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/smtp/ContentTransferEncoding;->BASE64:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v4, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v5, 0x4

    const-string v6, "binary"

    const-string v7, "BINARY"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/smtp/ContentTransferEncoding;->BINARY:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v5, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v6, 0x5

    const-string v7, "quoted-printable"

    const-string v8, "QUOTED_PRINTABLE"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/smtp/ContentTransferEncoding;->QUOTED_PRINTABLE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v6, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v7, 0x6

    const-string v8, "x-"

    const-string v9, "X_TOKEN"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/smtp/ContentTransferEncoding;->X_TOKEN:Lorg/apache/poi/smtp/ContentTransferEncoding;

    new-instance v7, Lorg/apache/poi/smtp/ContentTransferEncoding;

    const/4 v8, 0x7

    const-string v9, "unknown"

    const-string v10, "UNKNOWN"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/smtp/ContentTransferEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/smtp/ContentTransferEncoding;->UNKNOWN:Lorg/apache/poi/smtp/ContentTransferEncoding;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/smtp/ContentTransferEncoding;->$VALUES:[Lorg/apache/poi/smtp/ContentTransferEncoding;

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

    iput-object p3, p0, Lorg/apache/poi/smtp/ContentTransferEncoding;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static fromEncoding(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentTransferEncoding;
    .locals 5

    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/smtp/ContentTransferEncoding;->NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/smtp/ContentTransferEncoding;->values()[Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/smtp/ContentTransferEncoding;->encoding:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/smtp/ContentTransferEncoding;->UNKNOWN:Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentTransferEncoding;
    .locals 1

    const-class v0, Lorg/apache/poi/smtp/ContentTransferEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/smtp/ContentTransferEncoding;
    .locals 1

    sget-object v0, Lorg/apache/poi/smtp/ContentTransferEncoding;->$VALUES:[Lorg/apache/poi/smtp/ContentTransferEncoding;

    invoke-virtual {v0}, [Lorg/apache/poi/smtp/ContentTransferEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/smtp/ContentTransferEncoding;

    return-object v0
.end method
