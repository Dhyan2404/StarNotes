.class public final Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ(\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;",
        "",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "candidates",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "originPoints",
        "",
        "compareAndSort",
        "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;",
        "a",
        "Ljava/util/List;",
        "comparators",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;

    const/4 v1, 0x0

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/comparator/LineSubclassComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/LineSubclassComparator;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/comparator/OvalSubclassComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/OvalSubclassComparator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/comparator/QuadPolygonSubclassComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/QuadPolygonSubclassComparator;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getComparators$p()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final compareAndSort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "candidates"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originPoints"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort$compareAndSort$sorted$1;-><init>(Ljava/util/List;)V

    new-instance p2, Lcom/sunia/HTREnginev2/hnd;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/hnd;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
