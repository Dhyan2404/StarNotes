.class public Ljavax/imageio/plugins/bmp/BMPImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Ljavax/imageio/plugins/bmp/BMPImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ljavax/imageio/plugins/bmp/BMPImageWriteParam;->a:Z

    .line 3
    invoke-static {}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    .line 6
    aget-object p1, v0, p1

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isTopDown()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/plugins/bmp/BMPImageWriteParam;->a:Z

    return p0
.end method

.method public setTopDown(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/imageio/plugins/bmp/BMPImageWriteParam;->a:Z

    return-void
.end method
