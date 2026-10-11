.class public final enum Lorg/apache/poi/xwpf/usermodel/Flip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/Flip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/Flip;

.field public static final enum NONE:Lorg/apache/poi/xwpf/usermodel/Flip;

.field public static final enum X:Lorg/apache/poi/xwpf/usermodel/Flip;

.field public static final enum Y:Lorg/apache/poi/xwpf/usermodel/Flip;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/Flip;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/Flip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/Flip;->NONE:Lorg/apache/poi/xwpf/usermodel/Flip;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/Flip;

    const-string v2, "X"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/Flip;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/Flip;->X:Lorg/apache/poi/xwpf/usermodel/Flip;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/Flip;

    const-string v3, "Y"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/Flip;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/Flip;->Y:Lorg/apache/poi/xwpf/usermodel/Flip;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/xwpf/usermodel/Flip;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/Flip;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/Flip;

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

.method public static flipOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/Flip;
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/Flip;->NONE:Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/Flip;->NONE:Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/Flip;->Y:Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/Flip;->X:Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/Flip;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/Flip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/Flip;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/Flip;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/Flip;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/Flip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/Flip;

    return-object v0
.end method
