.class Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/StrokeStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object p0

    return-object p0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object p0

    return-object p0
.end method

.method public getLineWidth()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method
