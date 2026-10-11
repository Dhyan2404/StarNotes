.class public final Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
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
.method public static createDrmManager(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static destroy(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static reopen(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
