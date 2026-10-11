.class public final enum Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/draw/HwmfGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillDrawStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

.field public static final enum DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

.field public static final enum FILL:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

.field public static final enum FILL_DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

.field public static final enum NONE:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;


# instance fields
.field public final handler:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/poi/hwmf/draw/HwmfGraphics;",
            "Ljava/awt/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v1, Lcom/sunia/HTREnginev2/e5i;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/e5i;-><init>()V

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->NONE:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v2, Lcom/sunia/HTREnginev2/f5i;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/f5i;-><init>()V

    const-string v3, "FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v1, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v2, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v3, Lcom/sunia/HTREnginev2/g5i;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/g5i;-><init>()V

    const-string v4, "DRAW"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v2, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v3, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    new-instance v4, Lcom/sunia/HTREnginev2/h5i;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/h5i;-><init>()V

    const-string v5, "FILL_DRAW"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;-><init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    sput-object v3, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL_DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->$VALUES:[Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/poi/hwmf/draw/HwmfGraphics;",
            "Ljava/awt/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->handler:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->fillDraw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->fillNone(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V

    return-void
.end method

.method private static fillDraw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method private static fillNone(Lorg/apache/poi/hwmf/draw/HwmfGraphics;Ljava/awt/Shape;)V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->$VALUES:[Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-object v0
.end method
