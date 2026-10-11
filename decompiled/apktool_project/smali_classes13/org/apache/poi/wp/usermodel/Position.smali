.class public final enum Lorg/apache/poi/wp/usermodel/Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/wp/usermodel/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum BOTTOM:Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum FLOAT_LEFT:Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum FLOAT_RIGHT:Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum MIDDLE:Lorg/apache/poi/wp/usermodel/Position;

.field public static final enum NONE:Lorg/apache/poi/wp/usermodel/Position;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/wp/usermodel/Position;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    new-instance v1, Lorg/apache/poi/wp/usermodel/Position;

    const-string v2, "ABSOLUTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    new-instance v2, Lorg/apache/poi/wp/usermodel/Position;

    const-string v3, "FLOAT_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/wp/usermodel/Position;->FLOAT_LEFT:Lorg/apache/poi/wp/usermodel/Position;

    new-instance v3, Lorg/apache/poi/wp/usermodel/Position;

    const-string v4, "FLOAT_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/wp/usermodel/Position;->FLOAT_RIGHT:Lorg/apache/poi/wp/usermodel/Position;

    new-instance v4, Lorg/apache/poi/wp/usermodel/Position;

    const-string v5, "MIDDLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/wp/usermodel/Position;->MIDDLE:Lorg/apache/poi/wp/usermodel/Position;

    new-instance v5, Lorg/apache/poi/wp/usermodel/Position;

    const-string v6, "BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/wp/usermodel/Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/wp/usermodel/Position;->BOTTOM:Lorg/apache/poi/wp/usermodel/Position;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/wp/usermodel/Position;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/wp/usermodel/Position;->$VALUES:[Lorg/apache/poi/wp/usermodel/Position;

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

.method public static positionOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/Position;
    .locals 1

    const-string v0, "absolute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/Position;
    .locals 1

    const-class v0, Lorg/apache/poi/wp/usermodel/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/wp/usermodel/Position;
    .locals 1

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->$VALUES:[Lorg/apache/poi/wp/usermodel/Position;

    invoke-virtual {v0}, [Lorg/apache/poi/wp/usermodel/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/wp/usermodel/Position;

    return-object v0
.end method


# virtual methods
.method public getStyle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "vertical-align:bottom;"

    return-object p0

    :cond_1
    const-string p0, "vertical-align:middle;"

    return-object p0

    :cond_2
    const-string p0, "float:right;"

    return-object p0

    :cond_3
    const-string p0, "float:left;"

    return-object p0

    :cond_4
    const-string p0, "position:absolute;"

    return-object p0
.end method
