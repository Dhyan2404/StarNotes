.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderDocument;
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
.method public static createDocumentConverter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDocumentExporter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDocumentWriter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readCover(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "readImage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "metadata"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "documentOptions"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pluginOptions"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
