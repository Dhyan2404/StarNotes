.class final Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->compareAndSort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCandidateSort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CandidateSort.kt\ncom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,36:1\n1855#2:37\n1856#2:39\n637#3:38\n*S KotlinDebug\n*F\n+ 1 CandidateSort.kt\ncom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1\n*L\n22#1:37\n22#1:39\n24#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "L",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "kotlin.jvm.PlatformType",
        "R",
        "invoke",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCandidateSort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CandidateSort.kt\ncom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,36:1\n1855#2:37\n1856#2:39\n637#3:38\n*S KotlinDebug\n*F\n+ 1 CandidateSort.kt\ncom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1\n*L\n22#1:37\n22#1:39\n24#1:38\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $originPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;->$originPoints:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Ljava/lang/Integer;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->access$getComparators$p()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;->$originPoints:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;

    .line 4
    invoke-interface {v1}, Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;->getSupportedShapes()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v3

    .line 6
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeArgs()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeArgs()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v5

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;->compare(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    check-cast p2, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;->invoke(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
