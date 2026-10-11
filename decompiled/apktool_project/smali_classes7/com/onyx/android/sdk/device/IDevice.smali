.class public interface abstract Lcom/onyx/android/sdk/device/IDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/IDevice$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H&J6\u0010\r\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H&J0\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0008H&J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0 H&J\u0008\u0010!\u001a\u00020\u0003H\u0016J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0008\u0010(\u001a\u00020\u0003H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010-\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0005H\u0016J$\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u000303H&J\u0010\u00105\u001a\u00020/2\u0006\u00106\u001a\u000207H&J\u0010\u00108\u001a\u00020/2\u0006\u0010\u001b\u001a\u000209H&J\u0010\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020\u0003H&J\u0008\u0010<\u001a\u00020\u0003H\u0016J\u0010\u0010=\u001a\u00020/2\u0006\u00100\u001a\u000201H&\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/IDevice;",
        "",
        "filterByActionDown",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "filterByCancel",
        "pointerCount",
        "",
        "filterByDispatchPointerDown",
        "filterByDispatchTouchEvent",
        "filterByTouchUp",
        "currentEvent",
        "filterByUpToDownDistance",
        "downPointF",
        "Landroid/graphics/PointF;",
        "upPointF",
        "distanceThreshold",
        "filterByUpToDownTime",
        "downTimeMillisecond",
        "",
        "upTimeMillisecond",
        "upDownTimeMin",
        "upDownTimeMax",
        "filterDuplicateKeyboardOpenEvent",
        "keyboardHeight",
        "getNavBarHeight",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "getTranslateInfo",
        "Landroid/content/pm/ResolveInfo;",
        "list",
        "",
        "isCheckScaleSpanEnable",
        "isDynamicRefreshSupport",
        "refresh",
        "",
        "isEraserPressed",
        "motionEvent",
        "isPressed",
        "isRefreshModeChangeEnable",
        "isRefreshSupport",
        "isStylusLongPressInterrupt",
        "isStylusLongPressRelease",
        "isStylusLongPressed",
        "normalizeTouchAction",
        "registerStylusEngine",
        "",
        "context",
        "Landroid/content/Context;",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "requestRefreshConfigOfView",
        "view",
        "Landroid/view/View;",
        "setHighRefresh",
        "Landroid/app/Activity;",
        "setStylusLongPressActive",
        "isActive",
        "supportNativeRenderNode",
        "unRegisterStylusEngine",
        "sdk-device_release"
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
.method public abstract filterByActionDown(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByCancel(Landroid/view/MotionEvent;I)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract filterByDispatchPointerDown(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract filterByTouchUp(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract filterByUpToDownDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;Landroid/graphics/PointF;II)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract filterByUpToDownTime(JJIJJ)Z
.end method

.method public abstract filterDuplicateKeyboardOpenEvent(I)Z
.end method

.method public abstract getNavBarHeight(Landroidx/appcompat/app/AppCompatActivity;)I
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getTranslateInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isCheckScaleSpanEnable()Z
.end method

.method public abstract isDynamicRefreshSupport(F)Z
.end method

.method public abstract isEraserPressed(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isPressed(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isRefreshModeChangeEnable()Z
.end method

.method public abstract isRefreshSupport(F)Z
.end method

.method public abstract isStylusLongPressInterrupt(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isStylusLongPressRelease(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isStylusLongPressed(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract normalizeTouchAction(Landroid/view/MotionEvent;)I
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract registerStylusEngine(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestRefreshConfigOfView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setHighRefresh(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setStylusLongPressActive(Z)V
.end method

.method public abstract supportNativeRenderNode()Z
.end method

.method public abstract unRegisterStylusEngine(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
