.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "",
        "close",
        "",
        "createDocumentConverter",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;",
        "createDocumentExporter",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;",
        "createDocumentWriter",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;",
        "getDocumentFeatures",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "getPageDataProvider",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "getView",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "readCover",
        "readImage",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "readMetadata",
        "metadata",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;",
        "readTableOfContent",
        "toc",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "updateDocumentOptions",
        "",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "pluginOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract close()Z
.end method

.method public abstract createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract createDocumentWriter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getView()Lcom/onyx/android/sdk/reader/api/ReaderView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readCover(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
