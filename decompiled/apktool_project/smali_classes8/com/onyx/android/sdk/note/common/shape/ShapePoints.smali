.class public interface abstract Lcom/onyx/android/sdk/note/common/shape/ShapePoints;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/ShapePoints$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H&J \u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H&J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H&J(\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J2\u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J\u0018\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0016H&J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H&J\u0018\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0018\u0010.\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0018\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H&J\u0008\u00104\u001a\u00020\u0012H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapePoints;",
        "",
        "currentPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getCurrentPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setCurrentPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "downPoint",
        "getDownPoint",
        "setDownPoint",
        "points",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPoints",
        "()Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "setPoints",
        "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V",
        "addPoints",
        "",
        "containPoint",
        "",
        "x",
        "",
        "y",
        "fastHitTest",
        "radius",
        "getRenderPoints",
        "getUsePointCount",
        "",
        "hitTest",
        "x1",
        "y1",
        "x2",
        "y2",
        "hitTestPoint",
        "",
        "hitTestPoints",
        "pointList",
        "intersectRegion",
        "region",
        "Landroid/graphics/Region;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "onDown",
        "normalizedPoint",
        "screenPoint",
        "onMove",
        "onUp",
        "split",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "updatePoints",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract containPoint(FF)Z
.end method

.method public abstract fastHitTest(FFF)Z
.end method

.method public abstract getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUsePointCount()I
.end method

.method public abstract hitTest(FFF)Z
.end method

.method public abstract hitTest(FFFF)Z
.end method

.method public abstract hitTestPoint(FFFF)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hitTestPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;F)Z
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract intersectRegion(Landroid/graphics/Region;Landroid/graphics/Matrix;)Z
    .param p1    # Landroid/graphics/Region;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract updatePoints()V
.end method
