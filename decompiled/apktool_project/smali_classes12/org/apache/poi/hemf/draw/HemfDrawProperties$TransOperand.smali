.class final enum Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/draw/HemfDrawProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransOperand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

.field public static final enum left:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

.field public static final enum right:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;


# instance fields
.field fun:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/awt/geom/AffineTransform;",
            "Ljava/awt/geom/AffineTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    new-instance v1, Lcom/sunia/HTREnginev2/shh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/shh;-><init>()V

    const-string v2, "left"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->left:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    new-instance v1, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    new-instance v2, Lcom/sunia/HTREnginev2/thh;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/thh;-><init>()V

    const-string v3, "right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v1, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->right:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->$VALUES:[Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/awt/geom/AffineTransform;",
            "Ljava/awt/geom/AffineTransform;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->fun:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->$VALUES:[Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    return-object v0
.end method
