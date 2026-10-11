.class public final Lcom/onyx/android/sdk/reader/api/ReaderPagination$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderPagination;
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
.method public static chapterList(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPagination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static layoutPageForSimpleDocument(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPagination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onPaginationStart(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPagination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public static updateReaderPageInfo(Lcom/onyx/android/sdk/reader/api/ReaderPagination;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderPagination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "chapterId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
