.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "",
        "draw",
        "",
        "args",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "getRendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
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
.method public abstract draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
