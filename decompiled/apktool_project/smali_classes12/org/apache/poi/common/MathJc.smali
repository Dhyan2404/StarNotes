.class public final enum Lorg/apache/poi/common/MathJc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/MathJc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/MathJc;

.field public static final enum CENTER:Lorg/apache/poi/common/MathJc;

.field public static final enum CENTER_GROUP:Lorg/apache/poi/common/MathJc;

.field public static final enum LEFT:Lorg/apache/poi/common/MathJc;

.field public static final enum RIGHT:Lorg/apache/poi/common/MathJc;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/common/MathJc;

    const/4 v1, 0x0

    const-string v2, "left"

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/MathJc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/MathJc;->LEFT:Lorg/apache/poi/common/MathJc;

    new-instance v1, Lorg/apache/poi/common/MathJc;

    const/4 v2, 0x1

    const-string v3, "right"

    const-string v4, "RIGHT"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/common/MathJc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/MathJc;->RIGHT:Lorg/apache/poi/common/MathJc;

    new-instance v2, Lorg/apache/poi/common/MathJc;

    const/4 v3, 0x2

    const-string v4, "center"

    const-string v5, "CENTER"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/common/MathJc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/MathJc;->CENTER:Lorg/apache/poi/common/MathJc;

    new-instance v3, Lorg/apache/poi/common/MathJc;

    const/4 v4, 0x3

    const-string v5, "centerGroup"

    const-string v6, "CENTER_GROUP"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/common/MathJc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/common/MathJc;->CENTER_GROUP:Lorg/apache/poi/common/MathJc;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/common/MathJc;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/MathJc;->$VALUES:[Lorg/apache/poi/common/MathJc;

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

    iput-object p3, p0, Lorg/apache/poi/common/MathJc;->value:Ljava/lang/String;

    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/apache/poi/common/MathJc;
    .locals 5

    invoke-static {}, Lorg/apache/poi/common/MathJc;->values()[Lorg/apache/poi/common/MathJc;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/common/MathJc;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/common/MathJc;->LEFT:Lorg/apache/poi/common/MathJc;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/MathJc;
    .locals 1

    const-class v0, Lorg/apache/poi/common/MathJc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/MathJc;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/MathJc;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/MathJc;->$VALUES:[Lorg/apache/poi/common/MathJc;

    invoke-virtual {v0}, [Lorg/apache/poi/common/MathJc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/MathJc;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/MathJc;->value:Ljava/lang/String;

    return-object p0
.end method
