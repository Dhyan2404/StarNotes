.class Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shadow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shadow<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getShadowAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBlur()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getShadowDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getShadowColor()Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public getShadowParent()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    return-object p0
.end method
