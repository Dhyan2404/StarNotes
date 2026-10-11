.class Lorg/apache/poi/hslf/usermodel/HSLFFill$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFFill;->getTexturePaint()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

.field final synthetic val$pd:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->val$pd:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/hslf/usermodel/HSLFShape;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAlpha(Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->val$pd:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImageData()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->val$pd:Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getData()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/hslf/usermodel/HSLFShape;

    move-result-object p0

    return-object p0
.end method

.method public isRotatedWithShape()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->access$100(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Z

    move-result p0

    return p0
.end method
