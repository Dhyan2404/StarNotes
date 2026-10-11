.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "",
        "abortCurrentJob",
        "",
        "clearAbortFlag",
        "createDrmManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "destroy",
        "displayName",
        "",
        "getPluginFeatures",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;",
        "open",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "path",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "pluginOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "reopen",
        "",
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
.method public abstract abortCurrentJob()V
.end method

.method public abstract clearAbortFlag()V
.end method

.method public abstract createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract displayName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPluginFeatures()Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract reopen()Z
.end method
