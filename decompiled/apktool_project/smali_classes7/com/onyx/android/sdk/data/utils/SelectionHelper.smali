.class public final Lcom/onyx/android/sdk/data/utils/SelectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/utils/SelectionHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n215#2,2:146\n1#3:148\n1855#4,2:149\n*S KotlinDebug\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n*L\n27#1:146,2\n138#1:149,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 6*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u00016B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005B\u0019\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0008B\u0015\u0008\u0016\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0002\u0010\u000bB\u0015\u0008\u0016\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0002\u0010\rB!\u0008\u0016\u0012\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\u000f\u00a2\u0006\u0002\u0010\u0011J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0006\u0010%\u001a\u00020#J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0002J\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u0007J2\u0010(\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0\u00100\u000f\"\u0004\u0008\u0001\u0010)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H)0+J\u001c\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u000200J\u001b\u00101\u001a\u0002002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u00102J\u0018\u00103\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0002J!\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u00105R0\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00148GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R,\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u0011R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001f8G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/SelectionHelper;",
        "T",
        "Ljava/io/Serializable;",
        "()V",
        "t",
        "(Ljava/lang/Object;)V",
        "parent",
        "",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "list",
        "",
        "(Ljava/util/List;)V",
        "selectionHelper",
        "(Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V",
        "map",
        "",
        "Lcom/onyx/android/sdk/data/common/data/SelectionModel;",
        "(Ljava/util/Map;)V",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "getComparator",
        "()Ljava/util/Comparator;",
        "setComparator",
        "(Ljava/util/Comparator;)V",
        "selectedMap",
        "",
        "getSelectedMap",
        "()Ljava/util/Map;",
        "setSelectedMap",
        "selectedParentSet",
        "",
        "getSelectedParentSet",
        "()Ljava/util/Collection;",
        "clearAll",
        "",
        "clearAllSelectedStatus",
        "clearSelectedMap",
        "createSelectionModel",
        "getEnsureSelectedModel",
        "getSelectedItemMap",
        "R",
        "transform",
        "Lkotlin/Function1;",
        "getSelectedModel",
        "childCount",
        "",
        "hasSelectedItems",
        "",
        "isSelected",
        "(Ljava/lang/String;Ljava/lang/Object;)Z",
        "putSelectedModelMap",
        "toggleSelectData",
        "(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelectionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n215#2,2:146\n1#3:148\n1855#4,2:149\n*S KotlinDebug\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n*L\n27#1:146,2\n138#1:149,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/utils/SelectionHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_PARENT:Ljava/lang/String; = "default_parent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/utils/SelectionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/utils/SelectionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->Companion:Lcom/onyx/android/sdk/data/utils/SelectionHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/utils/SelectionHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/SelectionHelper<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "selectionHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v1, p1, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    iget-object p1, p1, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->comparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "default_parent"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getEnsureSelectedModel(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->toggleSelectData(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "default_parent"

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    const-string v0, "default_parent"

    .line 10
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getEnsureSelectedModel(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setSelectedList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private final createSelectionModel()Lcom/onyx/android/sdk/data/common/data/SelectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setComparator(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private final putSelectedModelMap(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setCount(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->createSelectionModel()Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setCount(J)V

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->clearSelectedMap()V

    return-void
.end method

.method public final clearAllSelectedStatus()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->clearSelectedStatus()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearSelectedMap()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public final getEnsureSelectedModel(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->createSelectionModel()Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    return-object p0
.end method

.method public final getSelectedItemMap(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setSelectedAllMode(Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getSelectedMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSelectedModel(Ljava/lang/String;J)Lcom/onyx/android/sdk/data/common/data/SelectionModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->putSelectedModelMap(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    return-object p0
.end method

.method public final getSelectedParentSet()Ljava/util/Collection;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->hasSelectedItems()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final hasSelectedItems()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->hasSelectedItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isSelected(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelected(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setComparator(Ljava/util/Comparator;)V
    .locals 0
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public final setSelectedMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->selectedMap:Ljava/util/Map;

    return-void
.end method

.method public final toggleSelectData(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/onyx/android/sdk/data/common/data/SelectionModel<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getEnsureSelectedModel(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->toggleSelectData(Ljava/lang/Object;)V

    return-object p0
.end method
