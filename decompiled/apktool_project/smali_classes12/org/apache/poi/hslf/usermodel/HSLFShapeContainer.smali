.class public interface abstract Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;
.end method

.method public bridge synthetic createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/ObjectShape;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;->createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    move-result-object p0

    return-object p0
.end method
