.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static convertToPDF(Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ConvertArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic convertToPDF$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;ILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;->convertToPDF(Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: convertToPDF"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
