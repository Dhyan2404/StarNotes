.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderDocumentConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,120:1\n86#2,4:121\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n*L\n78#1:121,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\"\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;",
        "",
        "",
        "code",
        "",
        "isSuccess",
        "Lcom/onyx/engine/sdk/NeoBaseNative;",
        "neoBaseNative",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "args",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "callback",
        "convertToPDF",
        "Lcom/onyx/engine/sdk/PageInfo;",
        "pageInfo",
        "",
        "a",
        "NO_ERROR",
        "I",
        "FILE_CAN_NOT_WRITE",
        "<init>",
        "()V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReaderDocumentConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,120:1\n86#2,4:121\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentConverter.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion\n*L\n78#1:121,4\n*E\n"
    }
.end annotation


# static fields
.field public static final FILE_CAN_NOT_WRITE:I = 0x1

.field public static final NO_ERROR:I

.field public static final synthetic a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;Lcom/onyx/engine/sdk/PageInfo;Lcom/onyx/engine/sdk/NeoBaseNative;)V
    .locals 4

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->Companion:Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v0

    invoke-interface {p3}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo$Companion;->create(II)Lcom/onyx/android/sdk/reader/api/ProgressInfo;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert doc current range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getStartPositionInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getEndPositionInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), documentSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/onyx/engine/sdk/NeoBaseNative;->getBookSize()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", chapter, id = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getStartChapterID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", byteSize = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/engine/sdk/PageRange;->getStartChapterLength()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", range: ["

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/engine/sdk/PinPosition;->getChapterStartPosition()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageInfo;->getPageRange()Lcom/onyx/engine/sdk/PageRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PageRange;->getStart()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PinPosition;->getChapterEndPosition()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), progress: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->getProgress()F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;->onProgressUpdate(Lcom/onyx/android/sdk/reader/api/ProgressInfo;)V

    :cond_1
    return-void
.end method

.method public final convertToPDF(Lcom/onyx/engine/sdk/NeoBaseNative;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I
    .locals 5
    .param p1    # Lcom/onyx/engine/sdk/NeoBaseNative;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ConvertArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "neoBaseNative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/engine/sdk/NeoBaseNative;->createPDFConverter()Lcom/onyx/engine/sdk/NeoPDFConverterNative;

    move-result-object v0

    new-instance v1, Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-direct {v1}, Lcom/onyx/engine/sdk/PDFConvertParameter;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getImageCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setCachePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setPdfPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PDFConvertParameter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setWriteCover(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setEnableHyphen(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setWriteTextByWord(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {v1, v2}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setAddLineTailSpace(Z)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getSavePDFPageCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/engine/sdk/PDFConvertParameter;->setSavePDFPageCount(I)Lcom/onyx/engine/sdk/PDFConvertParameter;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->startConvert(Lcom/onyx/engine/sdk/PDFConvertParameter;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Lcom/onyx/engine/sdk/PageInfo;

    invoke-direct {v1}, Lcom/onyx/engine/sdk/PageInfo;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->hasNextPage(Lcom/onyx/engine/sdk/PageInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;->isCancelled()Z

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToPDF cancelled, path = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getOutputPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->nextPage(Lcom/onyx/engine/sdk/PageInfo;)Lcom/onyx/engine/sdk/PageInfo;

    move-result-object v1

    const-string v3, "nextPage(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->convertPage(Lcom/onyx/engine/sdk/PageInfo;)Z

    invoke-virtual {p0, p3, v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;->a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;Lcom/onyx/engine/sdk/PageInfo;Lcom/onyx/engine/sdk/NeoBaseNative;)V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->writePDF()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->close()V

    return v2

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/engine/sdk/NeoPDFConverterNative;->close()V

    return v4
.end method

.method public final isSuccess(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
