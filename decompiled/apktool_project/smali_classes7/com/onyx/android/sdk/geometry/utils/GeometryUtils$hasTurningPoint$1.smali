.class final Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->hasTurningPoint(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
        "invoke",
        "(Lcom/onyx/android/sdk/geometry/data/AnglePoints;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $minLength:Ljava/lang/Number;

.field final synthetic $requireMinLength:Z

.field final synthetic $this_hasTurningPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $threshold:Ljava/lang/Number;


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$requireMinLength:Z

    iput-object p2, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$this_hasTurningPoint:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$minLength:Ljava/lang/Number;

    iput-object p4, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$threshold:Ljava/lang/Number;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/geometry/data/AnglePoints;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$requireMinLength:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$this_hasTurningPoint:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$this_hasTurningPoint:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v1, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->totalLineLength(Ljava/util/List;)F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$minLength:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$this_hasTurningPoint:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->totalLineLength(Ljava/util/List;)F

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$minLength:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->$threshold:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;->invoke(Lcom/onyx/android/sdk/geometry/data/AnglePoints;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
