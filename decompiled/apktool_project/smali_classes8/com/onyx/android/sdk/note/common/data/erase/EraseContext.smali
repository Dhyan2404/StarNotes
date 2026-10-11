.class public final Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEraseContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1855#2,2:159\n1855#2,2:161\n1549#2:163\n1620#2,3:164\n*S KotlinDebug\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n*L\n73#1:159,2\n92#1:161,2\n105#1:163\n105#1:164,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000 `2\u00020\u0001:\u0001`B\u0007\u00a2\u0006\u0004\u0008^\u0010_J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002J\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0000J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0006\u0010\u0015\u001a\u00020\u0014J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017J\u0006\u0010\u001a\u001a\u00020\u0007J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u000eJ\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0014R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R$\u00102\u001a\u0012\u0012\u0004\u0012\u00020\t0.j\u0008\u0012\u0004\u0012\u00020\t`/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R(\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\"068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010D\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\'\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\"0Ej\u0008\u0012\u0004\u0012\u00020\"`F8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR\"\u0010M\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010?\u001a\u0004\u0008M\u0010A\"\u0004\u0008N\u0010CR(\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR(\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010P\u001a\u0004\u0008W\u0010R\"\u0004\u0008X\u0010TR(\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010P\u001a\u0004\u0008[\u0010R\"\u0004\u0008\\\u0010T\u00a8\u0006a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "detachErasingBufferDataList",
        "Landroid/graphics/RectF;",
        "rect",
        "",
        "unionEraseRect",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "bean",
        "addChangedShapeBean",
        "getChangedShapeBeans",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getChangedShapeList",
        "mergeChangedShapeBeans",
        "eraseContext",
        "merge",
        "getChangedAddShapeList",
        "",
        "isShapeChanged",
        "getChangedRemovedShapes",
        "",
        "",
        "getChangedPageSet",
        "resetEraseRect",
        "getEraseRect",
        "setAbort",
        "isAbort",
        "shape",
        "canErase",
        "isEraseComplete",
        "isErasing",
        "",
        "a",
        "I",
        "getEraseState",
        "()I",
        "setEraseState",
        "(I)V",
        "eraseState",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "b",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "abort",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "c",
        "Ljava/util/ArrayList;",
        "changedShapeBeans",
        "d",
        "Landroid/graphics/RectF;",
        "eraseRect",
        "",
        "e",
        "Ljava/util/Set;",
        "getOnlyEraseShapeTypes",
        "()Ljava/util/Set;",
        "setOnlyEraseShapeTypes",
        "(Ljava/util/Set;)V",
        "onlyEraseShapeTypes",
        "f",
        "Z",
        "getEraseAllContains",
        "()Z",
        "setEraseAllContains",
        "(Z)V",
        "eraseAllContains",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "g",
        "Ljava/util/HashSet;",
        "getHitTestShapeTypes",
        "()Ljava/util/HashSet;",
        "hitTestShapeTypes",
        "h",
        "isSingleTapUp",
        "setSingleTapUp",
        "i",
        "Ljava/util/List;",
        "getErasingBufferDataList",
        "()Ljava/util/List;",
        "setErasingBufferDataList",
        "(Ljava/util/List;)V",
        "erasingBufferDataList",
        "j",
        "getErasingDataList",
        "setErasingDataList",
        "erasingDataList",
        "k",
        "getDownToUpDataList",
        "setDownToUpDataList",
        "downToUpDataList",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEraseContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1855#2,2:159\n1855#2,2:161\n1549#2:163\n1620#2,3:164\n*S KotlinDebug\n*F\n+ 1 EraseContext.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseContext\n*L\n73#1:159,2\n92#1:161,2\n105#1:163\n105#1:164,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final canErase(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetType(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final detachErasingBufferDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->i:Ljava/util/List;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyDetachList$default(Ljava/util/List;IIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChangedAddShapeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;->getAddedShapeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChangedPageSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getChangedPageSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getChangedRemovedShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;->getRemovedShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChangedShapeBeans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getChangedShapeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedAddShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedRemovedShapes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getDownToUpDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getEraseAllContains()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->f:Z

    return p0
.end method

.method public final getEraseRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEraseState()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->a:I

    return p0
.end method

.method public final getErasingBufferDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getErasingDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getHitTestShapeTypes()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->g:Ljava/util/HashSet;

    return-object p0
.end method

.method public final getOnlyEraseShapeTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    return-object p0
.end method

.method public final isAbort()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isEraseComplete()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isErasing()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShapeChanged()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getChangedShapeBeans()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final isSingleTapUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->h:Z

    return p0
.end method

.method public final merge(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eraseContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->g:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->g:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->mergeChangedShapeBeans()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->unionEraseRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final mergeChangedShapeBeans()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    return-object v0
.end method

.method public final resetEraseRect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setAbort()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setDownToUpDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->k:Ljava/util/List;

    return-void
.end method

.method public final setEraseAllContains(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->f:Z

    return-void
.end method

.method public final setEraseState(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->a:I

    return-void
.end method

.method public final setErasingBufferDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->i:Ljava/util/List;

    return-void
.end method

.method public final setErasingDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->j:Ljava/util/List;

    return-void
.end method

.method public final setOnlyEraseShapeTypes(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->e:Ljava/util/Set;

    return-void
.end method

.method public final setSingleTapUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->h:Z

    return-void
.end method

.method public final unionEraseRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->d:Landroid/graphics/RectF;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method
