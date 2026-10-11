.class public final Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;",
        "",
        "()V",
        "MIN_SCALE_INTERVAL",
        "",
        "getMIN_SCALE_INTERVAL",
        "()F",
        "loadRulerScaleType",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
        "scaleInterval",
        "angleTextPaint",
        "Landroid/graphics/Paint;",
        "unitsType",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMIN_SCALE_INTERVAL()F
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->access$getMIN_SCALE_INTERVAL$cp()F

    move-result p0

    return p0
.end method

.method public final loadRulerScaleType(FLandroid/graphics/Paint;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
    .locals 2
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "angleTextPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitsType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "10"

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->IN:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    if-ne p3, v0, :cond_4

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getScaleTextStep()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getScaleTextStep()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;->getMIN_SCALE_INTERVAL()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_QUARTER:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;->getMIN_SCALE_INTERVAL()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_HALF:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->IN_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    :goto_0
    return-object p3

    :cond_4
    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_TWO_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getScaleTextStep()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_FIVE_SCALE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getScaleTextStep()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;->getMIN_SCALE_INTERVAL()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_7

    sget-object p3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_COARSE:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    goto :goto_1

    :cond_7
    move-object p3, v0

    :goto_1
    return-object p3
.end method
