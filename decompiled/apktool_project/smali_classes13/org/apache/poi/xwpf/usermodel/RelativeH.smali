.class public final enum Lorg/apache/poi/xwpf/usermodel/RelativeH;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/RelativeH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/RelativeH;

.field public static final enum NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeH;

.field public static final enum PAGE:Lorg/apache/poi/xwpf/usermodel/RelativeH;

.field public static final enum PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/RelativeH;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/RelativeH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/RelativeH;

    const-string v2, "PAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/RelativeH;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/RelativeH;->PAGE:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/RelativeH;

    const-string v3, "PARAGRAPH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/RelativeH;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/RelativeH;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/xwpf/usermodel/RelativeH;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/RelativeH;

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

.method public static relativeOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/RelativeH;
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "paragraph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->PAGE:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/RelativeH;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/RelativeH;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/RelativeH;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/RelativeH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/RelativeH;

    return-object v0
.end method
