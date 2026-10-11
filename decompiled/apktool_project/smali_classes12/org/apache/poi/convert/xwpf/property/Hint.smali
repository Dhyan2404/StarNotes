.class public final enum Lorg/apache/poi/convert/xwpf/property/Hint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/convert/xwpf/property/Hint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum ASCII:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum BIDI:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum CS:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum DEFAULT:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum EAST_ASIA:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum HANSI:Lorg/apache/poi/convert/xwpf/property/Hint;

.field public static final enum NONE:Lorg/apache/poi/convert/xwpf/property/Hint;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v1, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v2, 0x1

    const-string v3, "eastAsia"

    const-string v4, "EAST_ASIA"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/convert/xwpf/property/Hint;->EAST_ASIA:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v2, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v3, 0x2

    const-string v4, "ascii"

    const-string v5, "ASCII"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/convert/xwpf/property/Hint;->ASCII:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v3, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v4, 0x3

    const-string v5, "hAnsi"

    const-string v6, "HANSI"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/convert/xwpf/property/Hint;->HANSI:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v4, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v5, 0x4

    const-string v6, "cs"

    const-string v7, "CS"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/convert/xwpf/property/Hint;->CS:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v5, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v6, 0x5

    const-string v7, "bidi"

    const-string v8, "BIDI"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/convert/xwpf/property/Hint;->BIDI:Lorg/apache/poi/convert/xwpf/property/Hint;

    new-instance v6, Lorg/apache/poi/convert/xwpf/property/Hint;

    const/4 v7, 0x6

    const-string v8, "default"

    const-string v9, "DEFAULT"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/convert/xwpf/property/Hint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/convert/xwpf/property/Hint;->DEFAULT:Lorg/apache/poi/convert/xwpf/property/Hint;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->$VALUES:[Lorg/apache/poi/convert/xwpf/property/Hint;

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

    iput-object p3, p0, Lorg/apache/poi/convert/xwpf/property/Hint;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getHint(Ljava/lang/String;)Lorg/apache/poi/convert/xwpf/property/Hint;
    .locals 5

    invoke-static {}, Lorg/apache/poi/convert/xwpf/property/Hint;->values()[Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/convert/xwpf/property/Hint;->desc:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/convert/xwpf/property/Hint;
    .locals 1

    const-class v0, Lorg/apache/poi/convert/xwpf/property/Hint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/convert/xwpf/property/Hint;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/convert/xwpf/property/Hint;
    .locals 1

    sget-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->$VALUES:[Lorg/apache/poi/convert/xwpf/property/Hint;

    invoke-virtual {v0}, [Lorg/apache/poi/convert/xwpf/property/Hint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/convert/xwpf/property/Hint;

    return-object v0
.end method
