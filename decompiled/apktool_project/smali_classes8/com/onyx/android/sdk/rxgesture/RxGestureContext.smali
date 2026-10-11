.class public final Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxGestureContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGestureContext.kt\ncom/onyx/android/sdk/rxgesture/RxGestureContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,374:1\n1#2:375\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008?\n\u0002\u0018\u0002\n\u0002\u0008T\u0018\u0000 \u00d1\u00012\u00020\u0001:\u0002\u00d1\u0001B\t\u00a2\u0006\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u000eJ\u0006\u0010!\u001a\u00020\u000eJ\u0006\u0010\"\u001a\u00020\u000eJ\u0006\u0010#\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020%J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020%J\u0006\u0010*\u001a\u00020%J\u0006\u0010+\u001a\u00020%J\u0006\u0010,\u001a\u00020%J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020%J\u0006\u00100\u001a\u00020%J\u0006\u00101\u001a\u00020%J\u0006\u00102\u001a\u00020-J\u0006\u00103\u001a\u00020\u000eJ\u0006\u00104\u001a\u00020\u000eJ\u0006\u00105\u001a\u00020\u000eJ\u0006\u00106\u001a\u00020%J\u0006\u00107\u001a\u00020%J\u0006\u00108\u001a\u00020%J\u0006\u00109\u001a\u00020%J\u0006\u0010:\u001a\u00020%J\u0006\u0010;\u001a\u00020%J\u0006\u0010<\u001a\u00020%J\u0006\u0010=\u001a\u00020%R\"\u0010D\u001a\u00020>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR$\u0010J\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010P\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010K\u001a\u0004\u0008Q\u0010M\"\u0004\u0008R\u0010OR$\u0010Y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR$\u0010]\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010T\u001a\u0004\u0008[\u0010V\"\u0004\u0008\\\u0010XR$\u0010a\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010E\u001a\u0004\u0008_\u0010G\"\u0004\u0008`\u0010IR\"\u0010e\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010K\u001a\u0004\u0008c\u0010M\"\u0004\u0008d\u0010OR$\u0010i\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010E\u001a\u0004\u0008g\u0010G\"\u0004\u0008h\u0010IR$\u0010m\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010E\u001a\u0004\u0008k\u0010G\"\u0004\u0008l\u0010IR$\u0010q\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u0010E\u001a\u0004\u0008o\u0010G\"\u0004\u0008p\u0010IR$\u0010u\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010E\u001a\u0004\u0008s\u0010G\"\u0004\u0008t\u0010IR$\u0010y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010T\u001a\u0004\u0008w\u0010V\"\u0004\u0008x\u0010XR$\u0010}\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010T\u001a\u0004\u0008{\u0010V\"\u0004\u0008|\u0010XR\u001b\u0010\u0083\u0001\u001a\u00020~8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R(\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0001\u0010E\u001a\u0005\u0008\u0085\u0001\u0010G\"\u0005\u0008\u0086\u0001\u0010IR(\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0088\u0001\u0010E\u001a\u0005\u0008\u0089\u0001\u0010G\"\u0005\u0008\u008a\u0001\u0010IR(\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008c\u0001\u0010T\u001a\u0005\u0008\u008d\u0001\u0010V\"\u0005\u0008\u008e\u0001\u0010XR(\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0090\u0001\u0010T\u001a\u0005\u0008\u0091\u0001\u0010V\"\u0005\u0008\u0092\u0001\u0010XR)\u0010\u009a\u0001\u001a\u00020-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001\"\u0006\u0008\u0098\u0001\u0010\u0099\u0001R)\u0010\u00a1\u0001\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R)\u0010\u00a4\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R)\u0010\u00a9\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a8\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00aa\u0001\u0010\u00a7\u0001R)\u0010\u00ac\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ab\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00ac\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00ad\u0001\u0010\u00a7\u0001R)\u0010\u00af\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ae\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00b0\u0001\u0010\u00a7\u0001R)\u0010\u00b2\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b1\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00b2\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00a7\u0001R)\u0010\u00b5\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b4\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00b6\u0001\u0010\u00a7\u0001R)\u0010\u00b8\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b7\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00b8\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00b9\u0001\u0010\u00a7\u0001R)\u0010\u00bb\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ba\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00bc\u0001\u0010\u00a7\u0001R)\u0010\u00be\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bd\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00bf\u0001\u0010\u00a7\u0001R)\u0010\u00c1\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c0\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00c1\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00c2\u0001\u0010\u00a7\u0001R)\u0010\u00c3\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009c\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00c4\u0001\u0010\u00a7\u0001R)\u0010\u00c6\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c5\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00c6\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00c7\u0001\u0010\u00a7\u0001R)\u0010\u00c9\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c8\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00c9\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00ca\u0001\u0010\u00a7\u0001R(\u0010\u00cb\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008K\u0010\u00a3\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00cc\u0001\u0010\u00a7\u0001R)\u0010\u00cd\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0095\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00cd\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00ce\u0001\u0010\u00a7\u0001\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "d",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastPoint",
        "c",
        "b",
        "",
        "pointerId",
        "a",
        "updatePointerDownPoint",
        "",
        "isActivePoint",
        "updatePointerUpPoint",
        "updateDownPoint",
        "updateMovePoint",
        "onMoved",
        "onMultipleMoved",
        "onLongPress",
        "onShortMoved",
        "onExitLongPress",
        "onFling",
        "onDoubleTap",
        "onSingleTap",
        "onPalmPressed",
        "onBigPalmPressed",
        "updateUpPoint",
        "updateActiveUpPoint",
        "updateCancelPoint",
        "isSinglePointTouch",
        "isThreeFingerTouch",
        "isTwoFingerTouch",
        "reset",
        "isDisabledPenTouch",
        "",
        "moveToDownDistance",
        "moveToDownSpanX",
        "moveToDownSpanY",
        "pointerMoveToDownDistance",
        "pointerMoveToDownSpanX",
        "pointerMoveToDownSpanY",
        "upToDownDistance",
        "",
        "upToDownTime",
        "moveToMoveDistance",
        "pointerMoveToMoveDistance",
        "downDistance",
        "pointerDownTime",
        "hasMoved",
        "hasSingleMoved",
        "hasMultipleMoved",
        "moveDistanceX",
        "moveDistanceY",
        "totalDistanceX",
        "totalDistanceY",
        "fixMoveDistanceX",
        "fixMoveDistanceY",
        "upDownDistanceX",
        "upDownDistanceY",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "getConfig",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "setConfig",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V",
        "config",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getDownPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setDownPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "downPoint",
        "I",
        "getActivePointerId",
        "()I",
        "setActivePointerId",
        "(I)V",
        "activePointerId",
        "getPointerId",
        "setPointerId",
        "e",
        "Landroid/view/MotionEvent;",
        "getPointerDownMotionEvent",
        "()Landroid/view/MotionEvent;",
        "setPointerDownMotionEvent",
        "(Landroid/view/MotionEvent;)V",
        "pointerDownMotionEvent",
        "f",
        "getPointerCurMotionEvent",
        "setPointerCurMotionEvent",
        "pointerCurMotionEvent",
        "g",
        "getPointerDownPoint",
        "setPointerDownPoint",
        "pointerDownPoint",
        "h",
        "getPointerCount",
        "setPointerCount",
        "pointerCount",
        "i",
        "getMovePoint",
        "setMovePoint",
        "movePoint",
        "j",
        "getUpPoint",
        "setUpPoint",
        "upPoint",
        "k",
        "getPointerUpPoint",
        "setPointerUpPoint",
        "pointerUpPoint",
        "l",
        "getActiveUpPoint",
        "setActiveUpPoint",
        "activeUpPoint",
        "m",
        "getDownMotionEvent",
        "setDownMotionEvent",
        "downMotionEvent",
        "n",
        "getCurMotionEvent",
        "setCurMotionEvent",
        "curMotionEvent",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "o",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "getVelocityTrackerWrapper",
        "()Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "velocityTrackerWrapper",
        "p",
        "getLastPointerMovePoint",
        "setLastPointerMovePoint",
        "lastPointerMovePoint",
        "q",
        "getLastMovePoint",
        "setLastMovePoint",
        "lastMovePoint",
        "r",
        "getActiveMoveMotionEvent",
        "setActiveMoveMotionEvent",
        "activeMoveMotionEvent",
        "s",
        "getActiveMultiMoveMotionEvent",
        "setActiveMultiMoveMotionEvent",
        "activeMultiMoveMotionEvent",
        "t",
        "J",
        "getLastMoveTime",
        "()J",
        "setLastMoveTime",
        "(J)V",
        "lastMoveTime",
        "u",
        "F",
        "getMaxMoveDistance",
        "()F",
        "setMaxMoveDistance",
        "(F)V",
        "maxMoveDistance",
        "v",
        "Z",
        "isLongPress",
        "()Z",
        "setLongPress",
        "(Z)V",
        "w",
        "isFling",
        "setFling",
        "x",
        "isDoubleTap",
        "setDoubleTap",
        "y",
        "isSingleTap",
        "setSingleTap",
        "z",
        "isScale",
        "setScale",
        "A",
        "isHover",
        "setHover",
        "B",
        "isPenActive",
        "setPenActive",
        "C",
        "isHasMultiplePoint",
        "setHasMultiplePoint",
        "D",
        "isHasMultipleMove",
        "setHasMultipleMove",
        "E",
        "isMorePointer",
        "setMorePointer",
        "isCancelled",
        "setCancelled",
        "G",
        "isLongPressExit",
        "setLongPressExit",
        "H",
        "isShortMoved",
        "setShortMoved",
        "isPalmPressed",
        "setPalmPressed",
        "isBigPalmPressed",
        "setBigPalmPressed",
        "<init>",
        "()V",
        "Companion",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRxGestureContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGestureContext.kt\ncom/onyx/android/sdk/rxgesture/RxGestureContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,374:1\n1#2:375\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:J

.field public u:F

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c:I

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 8

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    const/4 p2, 0x1

    if-lt p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Landroid/view/MotionEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)V

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    iget-object v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapDistanceThreshold()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    sget-object v2, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->e:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    return-void
.end method

.method public final downDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final fixMoveDistanceX()F
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->upDownDistanceX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveDistanceX()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final fixMoveDistanceY()F
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->upDownDistanceY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->moveDistanceY()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getActiveMoveMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->r:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getActiveMultiMoveMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->s:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getActivePointerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c:I

    return p0
.end method

.method public final getActiveUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    return-object p0
.end method

.method public final getCurMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getDownMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->m:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getLastMovePoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getLastMoveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->t:J

    return-wide v0
.end method

.method public final getLastPointerMovePoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->p:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getMaxMoveDistance()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    return p0
.end method

.method public final getMovePoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getPointerCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    return p0
.end method

.method public final getPointerCurMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getPointerDownMotionEvent()Landroid/view/MotionEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->e:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getPointerDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getPointerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    return p0
.end method

.method public final getPointerUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getVelocityTrackerWrapper()Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    return-object p0
.end method

.method public final hasMoved()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasSingleMoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMultipleMoved()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final hasMultipleMoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    return p0
.end method

.method public final hasSingleMoved()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isActivePoint(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBigPalmPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->J:Z

    return p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->F:Z

    return p0
.end method

.method public final isDisabledPenTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnabledPenTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->B:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isDoubleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->x:Z

    return p0
.end method

.method public final isFling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->w:Z

    return p0
.end method

.method public final isHasMultipleMove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    return p0
.end method

.method public final isHasMultiplePoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->C:Z

    return p0
.end method

.method public final isHover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->A:Z

    return p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->v:Z

    return p0
.end method

.method public final isLongPressExit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->G:Z

    return p0
.end method

.method public final isMorePointer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->E:Z

    return p0
.end method

.method public final isPalmPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->I:Z

    return p0
.end method

.method public final isPenActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->B:Z

    return p0
.end method

.method public final isScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->z:Z

    return p0
.end method

.method public final isShortMoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->H:Z

    return p0
.end method

.method public final isSinglePointTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->C:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isSingleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->y:Z

    return p0
.end method

.method public final isThreeFingerTouch()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTwoFingerTouch()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveDistanceX()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final moveDistanceY()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final moveToDownDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final moveToDownSpanX()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->spanX(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final moveToDownSpanY()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->spanY(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final moveToMoveDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final onBigPalmPressed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->J:Z

    return-void
.end method

.method public final onDoubleTap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->x:Z

    return-void
.end method

.method public final onExitLongPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->G:Z

    return-void
.end method

.method public final onFling()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->w:Z

    return-void
.end method

.method public final onLongPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->G:Z

    return-void
.end method

.method public final onMoved()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->t:J

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->r:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->r:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public final onMultipleMoved()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->p:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->t:J

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->s:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->s:Landroid/view/MotionEvent;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    return-void
.end method

.method public final onPalmPressed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->I:Z

    return-void
.end method

.method public final onShortMoved()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->H:Z

    return-void
.end method

.method public final onSingleTap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->y:Z

    return-void
.end method

.method public final pointerDownTime()J
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->obtainTimestamp(Lcom/onyx/android/sdk/base/data/TouchPoint;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final pointerMoveToDownDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final pointerMoveToDownSpanX()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->spanX(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final pointerMoveToDownSpanY()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->spanY(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final pointerMoveToMoveDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->p:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->C:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->E:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->t:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->v:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->w:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->x:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->y:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->z:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->F:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->H:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->e:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->p:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->I:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->J:Z

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->r:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->s:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setActiveMoveMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->r:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setActiveMultiMoveMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->s:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setActivePointerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c:I

    return-void
.end method

.method public final setActiveUpPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setBigPalmPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->J:Z

    return-void
.end method

.method public final setCancelled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->F:Z

    return-void
.end method

.method public final setConfig(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    return-void
.end method

.method public final setCurMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setDoubleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->x:Z

    return-void
.end method

.method public final setDownMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->m:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->w:Z

    return-void
.end method

.method public final setHasMultipleMove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->D:Z

    return-void
.end method

.method public final setHasMultiplePoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->C:Z

    return-void
.end method

.method public final setHover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->A:Z

    return-void
.end method

.method public final setLastMovePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setLastMoveTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->t:J

    return-void
.end method

.method public final setLastPointerMovePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->p:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->v:Z

    return-void
.end method

.method public final setLongPressExit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->G:Z

    return-void
.end method

.method public final setMaxMoveDistance(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->u:F

    return-void
.end method

.method public final setMorePointer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->E:Z

    return-void
.end method

.method public final setMovePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setPalmPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->I:Z

    return-void
.end method

.method public final setPenActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->B:Z

    return-void
.end method

.method public final setPointerCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    return-void
.end method

.method public final setPointerCurMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setPointerDownMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->e:Landroid/view/MotionEvent;

    return-void
.end method

.method public final setPointerDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setPointerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    return-void
.end method

.method public final setPointerUpPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->z:Z

    return-void
.end method

.method public final setShortMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->H:Z

    return-void
.end method

.method public final setSingleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->y:Z

    return-void
.end method

.method public final setUpPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final totalDistanceX()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final totalDistanceY()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final upDownDistanceX()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final upDownDistanceY()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final upToDownDistance()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->Companion:Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final upToDownTime()J
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public final updateActiveUpPoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final updateCancelPoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->F:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    return-void
.end method

.method public final updateDownPoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->m:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->reset()V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final updateMovePoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onMove(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_0
    return-void
.end method

.method public final updatePointerDownPoint(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :cond_0
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->e:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->f:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->C:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->h:I

    return-void
.end method

.method public final updatePointerUpPoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->k:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    return-void
.end method

.method public final updateUpPoint(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->b(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->n:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onUp(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->o:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_0
    return-void
.end method
