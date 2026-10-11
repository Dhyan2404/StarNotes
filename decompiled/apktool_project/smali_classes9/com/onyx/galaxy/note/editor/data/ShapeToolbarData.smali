.class public final Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0002J\u0013\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0016R(\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "",
        "",
        "distinct",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "tool",
        "",
        "enableTool",
        "disableTool",
        "resetConfig",
        "other",
        "equals",
        "",
        "hashCode",
        "",
        "",
        "a",
        "Ljava/util/List;",
        "getEnabledList",
        "()Ljava/util/List;",
        "setEnabledList",
        "(Ljava/util/List;)V",
        "enabledList",
        "b",
        "getDisabledList",
        "setDisabledList",
        "disabledList",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_SHAPE_TOOLBAR_DATA$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->c:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final disableTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$disableTool$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$disableTool$1;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final distinct()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    return-void
.end method

.method public final enableTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$enableTool$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$enableTool$1;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    iget-object v3, p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisabledList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getEnabledList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final resetConfig()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;->getDEFAULT_SHAPE_TOOLBAR_DATA()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;->getDEFAULT_SHAPE_TOOLBAR_DATA()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setDisabledList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->b:Ljava/util/List;

    return-void
.end method

.method public final setEnabledList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->a:Ljava/util/List;

    return-void
.end method
