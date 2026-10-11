.class public final Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
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
.method public static addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "boxCellInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;-><init>()V

    return-object p0
.end method

.method public static getCoverPageId(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public static isNeedUpdateCover(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;I)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic loadBookmarkList$default(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->loadBookmarkList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadBookmarkList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadGeoLayoutBackground(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static save(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static updatePageIdOnInit(Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "currentPageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
