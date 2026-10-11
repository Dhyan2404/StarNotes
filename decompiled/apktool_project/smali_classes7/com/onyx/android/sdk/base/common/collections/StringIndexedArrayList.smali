.class public final Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringIndexedArrayList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1864#2,3:193\n*S KotlinDebug\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n*L\n57#1:193,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0003B2\u0012!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0014J\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010!\u001a\u00020\tJ\u001c\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u0006\u0010$\u001a\u00020\tJ\u0015\u0010%\u001a\u0004\u0018\u00018\u00002\u0006\u0010$\u001a\u00020\t\u00a2\u0006\u0002\u0010&J\u000e\u0010\'\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\tJ\u001f\u0010(\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010)\u001a\u00020\u0017H\u0002J\u001a\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000b2\u0008\u0008\u0002\u0010,\u001a\u00020\u000bH\u0002J\u0015\u0010-\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010.\u001a\u00020\u00142\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0015\u0010/\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u000bH\u0016\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u00142\u000e\u00102\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u000003H\u0016J\u0017\u00104\u001a\u00020\u00172\u0008\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u00105J\u001f\u00104\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0018\u00106\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bH\u0002J\u0018\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0014J\u001c\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u0006\u0010$\u001a\u00020\tJ\u001e\u0010;\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010<J\u0016\u0010=\u001a\u00020\u00142\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0002R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u000ej\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u0000`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u000ej\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "E",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "stringIndexGenerator",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "e",
        "",
        "initialCapacity",
        "",
        "(Lkotlin/jvm/functions/Function1;I)V",
        "idToElementMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "idToIndexMap",
        "getStringIndexGenerator",
        "()Lkotlin/jvm/functions/Function1;",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "checkIndexSize",
        "clear",
        "clearAllIndex",
        "copy",
        "getDebugString",
        "getIndexElementPairWithId",
        "Lkotlin/Pair;",
        "id",
        "getWithId",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "indexOfId",
        "putIndex",
        "rebuildAllIndex",
        "rebuildRangeIndex",
        "from",
        "to",
        "remove",
        "removeAll",
        "removeAt",
        "(I)Ljava/lang/Object;",
        "removeIf",
        "filter",
        "Ljava/util/function/Predicate;",
        "removeIndex",
        "(Ljava/lang/Object;)V",
        "removeIndexRange",
        "removeRange",
        "fromIndex",
        "toIndex",
        "removeWithId",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "superAddAll",
        "sdk-base_release"
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
        "SMAP\nStringIndexedArrayList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1864#2,3:193\n*S KotlinDebug\n*F\n+ 1 StringIndexedArrayList.kt\ncom/onyx/android/sdk/base/common/collections/StringIndexedArrayList\n*L\n57#1:193,3\n*E\n"
    }
.end annotation


# instance fields
.field private final idToElementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final idToIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stringIndexGenerator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "stringIndexGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;-><init>(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method private final clearAllIndex()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private final putIndex(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final rebuildAllIndex()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->clearAllIndex()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->putIndex(ILjava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final rebuildRangeIndex(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->putIndex(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex(II)V

    return-void
.end method

.method private final removeIndex(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V

    return-void
.end method

.method private final removeIndex(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeIndex(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final removeIndexRange(II)V
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V

    return-void
.end method

.method private final superAddAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->putIndex(ILjava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V

    :cond_0
    return p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildRangeIndex$default(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;IIILjava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public final checkIndexSize()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->clearAllIndex()V

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final copy()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->superAddAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", list.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idToElementMap.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idToIndexMap.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIndexElementPairWithId(Ljava/lang/String;)Lkotlin/Pair;
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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getStringIndexGenerator()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->stringIndexGenerator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getWithId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOfId(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeIndex(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildAllIndex()V

    :cond_0
    return p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeIndex(ILjava/lang/Object;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1    # Ljava/util/function/Predicate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->rebuildAllIndex()V

    :cond_0
    return p1
.end method

.method public removeRange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeIndexRange(II)V

    return-void
.end method

.method public final removeWithId(Ljava/lang/String;)Lkotlin/Pair;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->idToIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->putIndex(ILjava/lang/Object;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->removeIndex(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getSize()I

    move-result p0

    return p0
.end method
