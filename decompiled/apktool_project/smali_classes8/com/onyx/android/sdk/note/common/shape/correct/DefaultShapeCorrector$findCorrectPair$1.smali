.class final Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;->b(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u00032&\u0010\u0006\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "pairA",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "kotlin.jvm.PlatformType",
        "pairB",
        "invoke",
        "(Lkotlin/Pair;Lkotlin/Pair;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;Lkotlin/Pair;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->intersectionAngle(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 v3, -0x1

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongPerpendicularDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine()Z

    move-result p0

    if-nez p0, :cond_4

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;->invoke(Lkotlin/Pair;Lkotlin/Pair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
