.class final Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->groupBlockLines(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "prev",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
        "next",
        "invoke",
        "(Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;)Ljava/lang/Boolean;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;)Ljava/lang/Boolean;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "prev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "next"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    cmpg-float p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    .line 4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 6
    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->atSameLine$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x41800000    # -0.25f

    mul-float/2addr v3, p0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p0, v4

    .line 7
    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p1

    cmpg-float p1, v3, p2

    if-gtz p1, :cond_2

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 8
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    check-cast p2, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout$groupBlockLines$blockLinesGroup$1;->invoke(Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
