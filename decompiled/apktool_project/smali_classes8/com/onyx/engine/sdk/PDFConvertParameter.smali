.class public Lcom/onyx/engine/sdk/PDFConvertParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_IMAGE_MAX_SCALE:F = 2.5f

.field public static final DEFAULT_IMAGE_QUALITY:I = 0x50

.field public static final SAVE_PDF_IMAGE_SIZE:I = 0x1f400000

.field public static final SAVE_PDF_PAGE_COUNT:I = 0x64


# instance fields
.field addLineTailSpace:Z

.field cachePath:Ljava/lang/String;

.field enableHyphen:Z

.field imageMaxScale:F

.field imageQuality:I

.field imageType:Lcom/onyx/engine/sdk/ImageType;

.field pdfPath:Ljava/lang/String;

.field savePDFImageSize:I

.field savePDFPageCount:I

.field writeCover:Z

.field writeTextByWord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeCover:Z

    .line 3
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->addLineTailSpace:Z

    .line 4
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeTextByWord:Z

    .line 5
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->enableHyphen:Z

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFPageCount:I

    const/high16 v0, 0x1f400000

    .line 7
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFImageSize:I

    .line 8
    sget-object v0, Lcom/onyx/engine/sdk/ImageType;->ORIGIN:Lcom/onyx/engine/sdk/ImageType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageType:Lcom/onyx/engine/sdk/ImageType;

    const/16 v0, 0x50

    .line 9
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageQuality:I

    const/high16 v0, 0x40200000    # 2.5f

    .line 10
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageMaxScale:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeCover:Z

    .line 13
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->addLineTailSpace:Z

    .line 14
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeTextByWord:Z

    .line 15
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->enableHyphen:Z

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFPageCount:I

    const/high16 v0, 0x1f400000

    .line 17
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFImageSize:I

    .line 18
    sget-object v0, Lcom/onyx/engine/sdk/ImageType;->ORIGIN:Lcom/onyx/engine/sdk/ImageType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageType:Lcom/onyx/engine/sdk/ImageType;

    const/16 v0, 0x50

    .line 19
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageQuality:I

    const/high16 v0, 0x40200000    # 2.5f

    .line 20
    iput v0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageMaxScale:F

    .line 21
    iput-object p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->cachePath:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->pdfPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCachePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->cachePath:Ljava/lang/String;

    return-object p0
.end method

.method public getImageMaxScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageMaxScale:F

    return p0
.end method

.method public getImageQuality()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageQuality:I

    return p0
.end method

.method public getImageType()Lcom/onyx/engine/sdk/ImageType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageType:Lcom/onyx/engine/sdk/ImageType;

    return-object p0
.end method

.method public getPdfPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->pdfPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSavePDFImageSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFImageSize:I

    return p0
.end method

.method public getSavePDFPageCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFPageCount:I

    return p0
.end method

.method public isAddLineTailSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->addLineTailSpace:Z

    return p0
.end method

.method public isEnableHyphen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->enableHyphen:Z

    return p0
.end method

.method public isWriteCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeCover:Z

    return p0
.end method

.method public isWriteTextByWord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeTextByWord:Z

    return p0
.end method

.method public setAddLineTailSpace(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->addLineTailSpace:Z

    return-object p0
.end method

.method public setCachePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->cachePath:Ljava/lang/String;

    return-object p0
.end method

.method public setEnableHyphen(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->enableHyphen:Z

    return-object p0
.end method

.method public setImageMaxScale(F)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageMaxScale:F

    return-object p0
.end method

.method public setImageQuality(I)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageQuality:I

    return-object p0
.end method

.method public setImageType(Lcom/onyx/engine/sdk/ImageType;)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->imageType:Lcom/onyx/engine/sdk/ImageType;

    return-object p0
.end method

.method public setPdfPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->pdfPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSavePDFImageSize(I)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFImageSize:I

    return-object p0
.end method

.method public setSavePDFPageCount(I)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->savePDFPageCount:I

    return-object p0
.end method

.method public setWriteCover(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeCover:Z

    return-object p0
.end method

.method public setWriteTextByWord(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/PDFConvertParameter;->writeTextByWord:Z

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
