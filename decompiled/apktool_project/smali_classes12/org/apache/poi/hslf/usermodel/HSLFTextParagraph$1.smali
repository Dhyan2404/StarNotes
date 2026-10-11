.class Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object p0

    return-object p0
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getAutoNumberingStartAt()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getBulletChar()Ljava/lang/Character;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getBulletColor()Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public getBulletFontSize()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getBulletSize()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBulletColor(Ljava/awt/Color;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HSLF only supports SolidPaint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
