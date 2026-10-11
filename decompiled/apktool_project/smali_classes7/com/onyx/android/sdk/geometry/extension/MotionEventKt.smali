.class public final Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u001a\n\u0010\t\u001a\u00020\u0004*\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "toTouchData",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "Landroid/view/MotionEvent;",
        "predictPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "action",
        "",
        "toTouchPoint",
        "sdk-geometry_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toTouchData(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 11
    .param p0    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->getToolType(Landroid/view/MotionEvent;)I

    move-result v3

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v4, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Landroid/view/MotionEvent;)V

    const-wide/16 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, v0

    move v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/geometry/data/TouchData;-><init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic toTouchData$default(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchData(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;I)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p0

    return-object p0
.end method

.method public static final toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p0    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Landroid/view/MotionEvent;)V

    return-object v0
.end method
