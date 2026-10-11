.class public Lcom/onyx/engine/sdk/NeoPDFConverterNative;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookSize:I

.field private formatHandle:J

.field private handle:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->formatHandle:J

    iput p3, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->bookSize:I

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeConvertPage(JLjava/lang/String;)Z
.end method

.method private native nativeHasNextPage(JLjava/lang/String;)Z
.end method

.method private native nativeNextPage(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeStartConvert(JLjava/lang/String;)J
.end method

.method private native nativeWritePDF(J)Z
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeClose(J)V

    iput-wide v2, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    :cond_0
    return-void
.end method

.method public convertPage(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeConvertPage(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasNextPage(Lcom/onyx/engine/sdk/PageInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    iget v1, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->bookSize:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeHasNextPage(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nextPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PageInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeNextPage(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/PageInfo;->fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public startConvert(Lcom/onyx/engine/sdk/PDFConvertParameter;)Z
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->formatHandle:J

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PDFConvertParameter;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeStartConvert(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startConvert(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-direct {v0, p1, p2}, Lcom/onyx/engine/sdk/PDFConvertParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->startConvert(Lcom/onyx/engine/sdk/PDFConvertParameter;)Z

    move-result p0

    return p0
.end method

.method public writePDF()Z
    .locals 2

    iget-wide v0, p0, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nativeWritePDF(J)Z

    move-result p0

    return p0
.end method
