.class public final Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;
.super Lcom/onyx/android/sdk/hwr/service/comparator/SubclassComparator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;",
        "Lcom/onyx/android/sdk/hwr/service/comparator/SubclassComparator;",
        "",
        "",
        "getSupportedShapes",
        "getPriorityOrders",
        "a",
        "Ljava/util/List;",
        "orderedShapes",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/List;
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
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;

    const-string v0, "Isosceles-Triangle"

    const-string v1, "Triangle"

    const-string v2, "Right-Triangle"

    const-string v3, "Regular-Triangle"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/comparator/SubclassComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriorityOrders()Ljava/util/List;
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

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;->a:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedShapes()Ljava/util/List;
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

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/comparator/TriangleSubclassComparator;->a:Ljava/util/List;

    return-object p0
.end method
