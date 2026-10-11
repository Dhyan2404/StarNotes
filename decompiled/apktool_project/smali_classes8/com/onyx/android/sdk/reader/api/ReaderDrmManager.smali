.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderDrmManager$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "",
        "activateDeviceDRM",
        "",
        "factory",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;",
        "isWholeBook",
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
.method public abstract activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isWholeBook()Z
.end method
