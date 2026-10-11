.class public final Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR,\u0010\u0011\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00070\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "getOrCopyShape",
        "",
        "pageId",
        "",
        "g",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "a",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "getNoteBundle",
        "()Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "b",
        "Ljava/util/Map;",
        "pageShapeMap",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/NoteBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPageShapeMap(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public static final f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final g(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getNewAddedShapeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getPageShapeMap$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getPageShapeMap$2;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    return-object p0
.end method

.method public final getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$shapeMap$1;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$shapeMap$1;-><init>(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)V

    new-instance v4, Lcom/sunia/HTREnginev2/v3e;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/v3e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "computeIfAbsent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$copyShape$1;

    invoke-direct {v4, p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$copyShape$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance p1, Lcom/sunia/HTREnginev2/w3e;

    invoke-direct {p1, v4}, Lcom/sunia/HTREnginev2/w3e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    instance-of v1, p1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->getTargetShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    if-nez v3, :cond_2

    return-object p1

    :cond_2
    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->b:Ljava/util/Map;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$1;

    invoke-direct {v6, p0}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$1;-><init>(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)V

    new-instance p0, Lcom/sunia/HTREnginev2/x3e;

    invoke-direct {p0, v6}, Lcom/sunia/HTREnginev2/x3e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$2;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$3;

    invoke-direct {v1, v0, v3}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs$getOrCopyShape$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-object p1
.end method
