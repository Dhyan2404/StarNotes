.class public final Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "virtualBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object p0
.end method

.method public final create(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->setOriginalExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->setTransformShapes(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getNoteModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getNoteModelList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getNoteModelList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
