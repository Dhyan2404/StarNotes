.class Lorg/apache/poi/hslf/usermodel/HSLFFill$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFFill;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

.field final synthetic val$colors:Ljava/util/List;

.field final synthetic val$fractions:Ljava/util/List;

.field final synthetic val$gradientType:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$colors:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$fractions:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$gradientType:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/usermodel/HSLFFill$1;Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->wrapColor(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->lambda$getGradientColors$0(I)[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGradientColors$0(I)[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object p0
.end method

.method private wrapColor(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getGradientAngle()D
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/hslf/usermodel/HSLFShape;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__ANGLE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)I

    move-result p0

    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->fixedPointToDouble(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hslf/usermodel/a;

    invoke-direct {v1, p0}, Lorg/apache/poi/hslf/usermodel/a;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFFill$1;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/hslf/usermodel/b;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object p0
.end method

.method public getGradientFractions()[F
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$fractions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$fractions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$fractions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->val$gradientType:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0
.end method

.method public isRotatedWithShape()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->access$100(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Z

    move-result p0

    return p0
.end method
