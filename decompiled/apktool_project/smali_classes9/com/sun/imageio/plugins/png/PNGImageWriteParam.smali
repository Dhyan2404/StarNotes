.class final Lcom/sun/imageio/plugins/png/PNGImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# static fields
.field private static final DEFAULT_QUALITY:F = 0.5f

.field private static final compressionNames:[Ljava/lang/String;

.field private static final qualityDescs:[Ljava/lang/String;

.field private static final qualityVals:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "Deflate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->compressionNames:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->qualityVals:[F

    const-string v0, "Medium compression"

    const-string v1, "Low compression"

    const-string v2, "High compression"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->qualityDescs:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljavax/imageio/ImageWriteParam;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    sget-object p1, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->compressionNames:[Ljava/lang/String;

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void
.end method


# virtual methods
.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionQualityDescriptions()[Ljava/lang/String;

    sget-object p0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->qualityDescs:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getCompressionQualityValues()[F
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionQualityValues()[F

    sget-object p0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;->qualityVals:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public isCompressionLossless()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public unsetCompression()V
    .locals 2

    invoke-super {p0}, Ljavax/imageio/ImageWriteParam;->unsetCompression()V

    iget-object v0, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void
.end method
