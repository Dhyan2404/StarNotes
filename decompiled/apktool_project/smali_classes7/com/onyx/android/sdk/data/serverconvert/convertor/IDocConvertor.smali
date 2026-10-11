.class public interface abstract Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0007H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\r\u001a\u00020\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;",
        "",
        "docConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
        "convertEntry",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "downloadFile",
        "",
        "listener",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;",
        "init",
        "queryDocConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
        "release",
        "uploadFile",
        "sdk-data_release"
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
.method public abstract docConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract downloadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract init()V
.end method

.method public abstract queryDocConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract uploadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
