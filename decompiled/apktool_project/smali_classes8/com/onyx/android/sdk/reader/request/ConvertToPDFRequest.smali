.class public final Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001BJ\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0015\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010!\u001a\u00020\u001d\u0012!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00040\"\u00a2\u0006\u0004\u00083\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0010H\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010!\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R2\u0010*\u001a\u001d\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00040\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\'\u001a\u0004\u0008(\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "closeResources",
        "h",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "reader",
        "k",
        "f",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "g",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "i",
        "metrics",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;",
        "j",
        "",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "path",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "getConvertArgs",
        "()Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "convertArgs",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lkotlin/ParameterName;",
        "name",
        "info",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "callback",
        "",
        "Z",
        "getConvertSuccess",
        "()Z",
        "setConvertSuccess",
        "(Z)V",
        "convertSuccess",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/functions/Function1;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ConvertArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/ReaderBundle;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/Size;",
            "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convertArgs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g:Lcom/onyx/android/sdk/base/data/Size;

    iput-object p4, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    iput-object p5, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public closeResources()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->closeResources()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h()V

    return-void
.end method

.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->k(Lcom/onyx/android/sdk/reader/Reader;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;->convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Companion;->isSuccess(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", outputPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", convertSuccess = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->destroyReaderByPath(Ljava/lang/String;)V

    return-void
.end method

.method public final g()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;-><init>(Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V

    return-object v0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->i:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getConvertArgs()Lcom/onyx/android/sdk/reader/api/ConvertArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    return-object p0
.end method

.method public final getConvertSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j:Z

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->h:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getImageCachePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 2

    new-instance p0, Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-direct {p0}, Lcom/onyx/engine/sdk/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/DisplayMetrics;->setWidth(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setHeight(I)V

    sget-object p1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensity(F)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setScaledDensity(F)V

    const/high16 p1, 0x42900000    # 72.0f

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setxDpi(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setyDpi(F)V

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->setDensityDpi(I)V

    return-object p0
.end method

.method public final j(Lcom/onyx/engine/sdk/DisplayMetrics;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 7

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/reader/R$integer;->pdf_font_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DisplayMetrics;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    sget p1, Lcom/onyx/android/sdk/reader/R$integer;->pdf_display_width:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sget p1, Lcom/onyx/android/sdk/reader/R$integer;->pdf_line_height:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    sget v2, Lcom/onyx/android/sdk/reader/R$integer;->pdf_paragraph_height:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    sget v3, Lcom/onyx/android/sdk/reader/R$fraction;->pdf_margin_left:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/onyx/android/sdk/reader/R$fraction;->pdf_margin_right:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    float-to-int v4, v4

    sget v5, Lcom/onyx/android/sdk/reader/R$fraction;->pdf_margin_top:I

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/onyx/android/sdk/reader/R$fraction;->pdf_margin_bottom:I

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v6, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit$Companion;->create(F)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontSize(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$SPUnit;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontEmboldenLevel(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setLineSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setParagraphSpacing(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setAlignment(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Alignment;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setEnableHyphen(Z)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    new-instance p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>()V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setLeftMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setRightMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setTopMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->setBottomMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setPageMargin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)V

    sget-object p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;->NONE:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;->setFontVariantLigaturesState(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;)V

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/reader/Reader;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->i(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/engine/sdk/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/Reader;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j(Lcom/onyx/engine/sdk/DisplayMetrics;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    :cond_0
    return-void
.end method

.method public final setConvertSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->j:Z

    return-void
.end method
