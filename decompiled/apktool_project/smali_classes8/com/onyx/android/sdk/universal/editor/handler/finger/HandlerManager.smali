.class public final Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,560:1\n1855#2,2:561\n1855#2,2:563\n1855#2,2:565\n*S KotlinDebug\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n*L\n126#1:561,2\n141#1:563,2\n147#1:565,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008*\u0018\u0000 \u00bd\u00012\u00020\u0001:\u0002\u00bd\u0001B\t\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0012\u0010\u001a\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u001b\u001a\u00020\u0008H\u0002J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u0002J\u0016\u0010#\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u0006\u0010%\u001a\u00020\u0002J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020\u0008J\u0006\u0010+\u001a\u00020\u0008J\u0006\u0010,\u001a\u00020\u0008J\u0006\u0010-\u001a\u00020\u0008J\u0016\u0010.\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010/\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u0008J\u0010\u00103\u001a\u00020\u00082\u0008\u0008\u0002\u00102\u001a\u00020\u0008J\u000e\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u001e\u0010:\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u0016\u0010;\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u001e\u0010<\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u001e\u0010=\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u0016\u0010>\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u0016\u0010?\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u000e\u0010@\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010A\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BJ\u000e\u0010E\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BJ\u000e\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020\u0008J\u000e\u0010H\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u0006\u0010K\u001a\u00020\u0002J\u000e\u0010L\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010N\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u0006\u0010O\u001a\u00020\u0008J\u000e\u0010R\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020PJ\u000e\u0010S\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020PJ\u0006\u0010T\u001a\u00020\u0008J\u0006\u0010U\u001a\u00020\u0008J\u001a\u0010X\u001a\u00020\u00082\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00080VJ\u0006\u0010Y\u001a\u00020\u0008R\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R#\u0010d\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00170_8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\"\u0010k\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u0017\u0010q\u001a\u00020l8\u0006\u00a2\u0006\u000c\n\u0004\u0008m\u0010n\u001a\u0004\u0008o\u0010pR\u0017\u0010v\u001a\u00020r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010s\u001a\u0004\u0008t\u0010uR\u001e\u0010z\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030x0w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010yR$\u0010|\u001a\u00020{8\u0006@\u0006X\u0086.\u00a2\u0006\u0014\n\u0004\u0008|\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0084\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u001b\u0010\u0083\u0001R*\u0010\u0086\u0001\u001a\u00030\u0085\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R+\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0006\u0010\u008d\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0017\u0010\'\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0007\u0010\u0093\u0001R\u0019\u0010\u0096\u0001\u001a\u00030\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u0095\u0001R(\u0010\u0098\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0016\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R(\u0010\u009c\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0004\u0010\u0097\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u0099\u0001\"\u0006\u0008\u009d\u0001\u0010\u009b\u0001R(\u0010\u009e\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0003\u0010\u0097\u0001\u001a\u0006\u0008\u009e\u0001\u0010\u0099\u0001\"\u0006\u0008\u009f\u0001\u0010\u009b\u0001R(\u0010\u00a0\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0005\u0010\u0097\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u0099\u0001\"\u0006\u0008\u00a1\u0001\u0010\u009b\u0001R(\u0010\u00a2\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\t\u0010\u0097\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u0099\u0001\"\u0006\u0008\u00a3\u0001\u0010\u009b\u0001R(\u0010\u00a4\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u001a\u0010\u0097\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u0099\u0001\"\u0006\u0008\u00a5\u0001\u0010\u009b\u0001R(\u0010\u00a6\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0013\u0010\u0097\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u0099\u0001\"\u0006\u0008\u00a7\u0001\u0010\u009b\u0001R)\u0010\u00a9\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a8\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u0099\u0001\"\u0006\u0008\u00aa\u0001\u0010\u009b\u0001R(\u0010\u00ab\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u000f\u0010\u0097\u0001\u001a\u0006\u0008\u00ab\u0001\u0010\u0099\u0001\"\u0006\u0008\u00ac\u0001\u0010\u009b\u0001R)\u0010\u00ae\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u0099\u0001\"\u0006\u0008\u00af\u0001\u0010\u009b\u0001R)\u0010\u00b1\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b0\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u0099\u0001\"\u0006\u0008\u00b2\u0001\u0010\u009b\u0001R(\u0010\u00b3\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0011\u0010\u0097\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u0099\u0001\"\u0006\u0008\u00b4\u0001\u0010\u009b\u0001R(\u0010\u00b5\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0014\u0010\u0097\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u0099\u0001\"\u0006\u0008\u00b6\u0001\u0010\u009b\u0001R(\u0010\u00b7\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0012\u0010\u0097\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u0099\u0001\"\u0006\u0008\u00b8\u0001\u0010\u009b\u0001R(\u0010\u00b9\u0001\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u000c\u0010\u0097\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u0099\u0001\"\u0006\u0008\u00ba\u0001\u0010\u009b\u0001\u00a8\u0006\u00be\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;",
        "",
        "",
        "l",
        "k",
        "m",
        "g",
        "h",
        "",
        "n",
        "Landroid/view/MotionEvent;",
        "event",
        "x",
        "Landroid/view/View;",
        "view",
        "r",
        "d",
        "u",
        "w",
        "p",
        "v",
        "",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;",
        "i",
        "e",
        "o",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "init",
        "destroy",
        "",
        "key",
        "handler",
        "registerHandler",
        "unregisterHandler",
        "subscribeTouchEvent",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "getTouchMode",
        "isSupportTouchEdit",
        "isSupportFingerTouchEdit",
        "isShapeTouchEnabled",
        "isTextSelectionTouchEnabled",
        "onTouchEvent",
        "dispatchTouchEvent",
        "isActive",
        "setStylusLongPressActive",
        "showToast",
        "checkNoteLayer",
        "motionEvent",
        "onTouchDown",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "downMotionEvent",
        "currentEvent",
        "onMoving",
        "onExitSingleMove",
        "onTwoFingerMoving",
        "onFling",
        "onTouchUp",
        "onTouchCancel",
        "onSingleTapUp",
        "onLongPress",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "onScaleBegin",
        "onScale",
        "pinchZooming",
        "onScaleEnd",
        "onDoubleTap",
        "onTwoFingerClicked",
        "onThreeFingerClicked",
        "onExitLongPress",
        "onNoGestures",
        "onStylusLongPressActive",
        "onStylusLongPressRelease",
        "isGestureMoved",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "supportSingleTapClick",
        "supportSingleTapClickOnNonEditMode",
        "isLongPress",
        "hasMultiplePoint",
        "Lkotlin/Function1;",
        "predicate",
        "filterByFingerGesture",
        "isDummyProvider",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "",
        "a",
        "Ljava/util/Map;",
        "getHandlerMap",
        "()Ljava/util/Map;",
        "handlerMap",
        "b",
        "Ljava/lang/String;",
        "getActiveProviderName",
        "()Ljava/lang/String;",
        "setActiveProviderName",
        "(Ljava/lang/String;)V",
        "activeProviderName",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;",
        "getReaderGestureDistributor",
        "()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;",
        "readerGestureDistributor",
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;",
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;",
        "getTouchStateInfo",
        "()Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;",
        "touchStateInfo",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Ljava/util/List;",
        "gestureHandlerActionList",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;",
        "shapeHandlerManager",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;",
        "getShapeHandlerManager",
        "()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;",
        "setShapeHandlerManager",
        "(Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;)V",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "motionEventChecker",
        "Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;",
        "editorDataProxy",
        "Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;",
        "getEditorDataProxy",
        "()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;",
        "setEditorDataProxy",
        "(Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;)V",
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;",
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;",
        "getRulerTransformHandler",
        "()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;",
        "setRulerTransformHandler",
        "(Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;)V",
        "rulerTransformHandler",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
        "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;",
        "touchModeFeature",
        "Z",
        "isEnabledProcess",
        "()Z",
        "setEnabledProcess",
        "(Z)V",
        "isEnabledKeyProcess",
        "setEnabledKeyProcess",
        "isEnabledFingerTouchProcess",
        "setEnabledFingerTouchProcess",
        "isEnabledStylusTouchProcess",
        "setEnabledStylusTouchProcess",
        "isEnabledEraseTouchProcess",
        "setEnabledEraseTouchProcess",
        "isEnabledScale",
        "setEnabledScale",
        "isEnabledLongPress",
        "setEnabledLongPress",
        "q",
        "isEnabledSingleTapUp",
        "setEnabledSingleTapUp",
        "isEnabledScroll",
        "setEnabledScroll",
        "s",
        "isEnabledFling",
        "setEnabledFling",
        "t",
        "isEnabledDown",
        "setEnabledDown",
        "isEnabledPan",
        "setEnabledPan",
        "isEnabledDoubleTap",
        "setEnabledDoubleTap",
        "isEnableMultiClick",
        "setEnableMultiClick",
        "isEnableStylusLongClick",
        "setEnableStylusLongClick",
        "<init>",
        "()V",
        "Companion",
        "sdk-universal_overseasRelease"
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
        "SMAP\nHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,560:1\n1855#2,2:561\n1855#2,2:563\n1855#2,2:565\n*S KotlinDebug\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n*L\n126#1:561,2\n141#1:563,2\n147#1:565,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DUMMY_PROVIDER:Ljava/lang/String; = "dummy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MENU:Ljava/lang/String; = "menu"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READING_PROVIDER:Ljava/lang/String; = "reading_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HandlerManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WORD_SELECTION_PROVIDER:Ljava/lang/String; = "word_selection_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public editorDataProxy:Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

.field public f:Lcom/onyx/android/sdk/device/IDevice;

.field public g:Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public shapeHandlerManager:Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->Companion:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->j:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->k:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->l:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->q:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->s:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->t:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->u:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->x:Z

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->q(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V

    return-void
.end method

.method public static final synthetic access$getActiveHandler(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->s(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->t(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V

    return-void
.end method

.method public static synthetic checkNoteLayer$default(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;ZILjava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->checkNoteLayer(Z)Z

    move-result p0

    return p0
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e()V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->supportSingleTapClick(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public final checkNoteLayer(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurNoteLayerLocked(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurNoteLayerShown(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerHiddenEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isPinchZooming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isFingerTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h()V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->cancelAction()V

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onScaleDisabled()V

    const/4 p0, 0x0

    return p0
.end method

.method public final filterByFingerGesture(Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getActiveProviderName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEditorDataProxy()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->editorDataProxy:Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "editorDataProxy"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHandlerMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final getReaderGestureDistributor()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    return-object p0
.end method

.method public final getRulerTransformHandler()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->g:Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;

    return-object p0
.end method

.method public final getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->shapeHandlerManager:Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "shapeHandlerManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    return-object p0
.end method

.method public final getTouchStateInfo()Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->dispose()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final hasMultiplePoint()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->getRxGesture()Lcom/onyx/android/sdk/rxgesture/RxGesture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHasMultiplePoint()Z

    move-result p0

    return p0
.end method

.method public final i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    return-object p0
.end method

.method public final init(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->setHandlerManager(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->l()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setShapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f:Lcom/onyx/android/sdk/device/IDevice;

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/DefaultEditorDataProxy;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEditorDataProxy(Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->k()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->m()V

    return-void
.end method

.method public final isDummyProvider()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b:Ljava/lang/String;

    const-string v0, "dummy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEnableMultiClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w:Z

    return p0
.end method

.method public final isEnableStylusLongClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->x:Z

    return p0
.end method

.method public final isEnabledDoubleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v:Z

    return p0
.end method

.method public final isEnabledDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->t:Z

    return p0
.end method

.method public final isEnabledEraseTouchProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->n:Z

    return p0
.end method

.method public final isEnabledFingerTouchProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->l:Z

    return p0
.end method

.method public final isEnabledFling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->s:Z

    return p0
.end method

.method public final isEnabledKeyProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->k:Z

    return p0
.end method

.method public final isEnabledLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p:Z

    return p0
.end method

.method public final isEnabledPan()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->u:Z

    return p0
.end method

.method public final isEnabledProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->j:Z

    return p0
.end method

.method public final isEnabledScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o:Z

    return p0
.end method

.method public final isEnabledScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r:Z

    return p0
.end method

.method public final isEnabledSingleTapUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->q:Z

    return p0
.end method

.method public final isEnabledStylusTouchProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->m:Z

    return p0
.end method

.method public final isGestureMoved()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->isMultiFingersMoved()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->isSingleFingerMoved()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->getCurMoveMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->isLongPress()Z

    move-result p0

    return p0
.end method

.method public final isShapeTouchEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isShapeTouchEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSupportFingerTouchEdit()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportFingerEdit()Z

    move-result p0

    return p0
.end method

.method public final isSupportTouchEdit()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportEdit()Z

    move-result p0

    return p0
.end method

.method public final isTextSelectionTouchEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isTextSelectionTouchEnabled()Z

    move-result p0

    return p0
.end method

.method public final j()J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    :goto_0
    return-wide v0
.end method

.method public final k()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/finger/DummyHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/DummyHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "dummy"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/finger/ReadingHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/ReadingHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string v1, "reading_provider"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;)V

    return-void
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->m:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportScrollWithPen()Z

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

.method public final o(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isHandlerProcessing(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;->hasGestureDoubleQuicklyClickFunc()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/lfh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lfh;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onDoubleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onExitLongPress()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onExitLongPress()V

    return-void
.end method

.method public final onExitSingleMove(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onExitSingleMove(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onFling(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downMotionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onFling(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "downMotionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentEvent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onMoving(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onNoGestures(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onScale(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public final onScaleEnd(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onScaleEnd()V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onSingleTapUp(Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/sunia/HTREnginev2/mfh;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/mfh;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->setPredicate(Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$2;

    new-instance v3, Lcom/sunia/HTREnginev2/nfh;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/nfh;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Landroid/view/MotionEvent;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$4;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$4;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager$onSingleTapUp$5;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/view/MotionEvent;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onStylusLongPressActive(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onStylusLongPressActive(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onStylusLongPressRelease(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onStylusLongPressRelease(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onThreeFingerClicked(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onThreeFingerClicked(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onTouchCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onTouchCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onTouchDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onTouchDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->reportMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w()V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->x(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onTwoFingerClicked(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onTwoFingerClicked(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onTwoFingerMoving(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "downMotionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentEvent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i()Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;->onMoving(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->isEnabledPalmReject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isStylusMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isShapeTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setStylusLongPress(Z)V

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShapeTouchEvent, stopScroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->checkNoteLayer(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f:Lcom/onyx/android/sdk/device/IDevice;

    const/4 v1, 0x0

    const-string v2, "motionEventChecker"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/device/IDevice;->isStylusLongPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f:Lcom/onyx/android/sdk/device/IDevice;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-interface {v1, p2}, Lcom/onyx/android/sdk/device/IDevice;->isEraserPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->isStylusLongPressEraser()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->u(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isStylusLongPress()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowStylusFunctionInvalidEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->setStylusLongPress(Z)V

    :cond_8
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isPinchZooming()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    :goto_2
    return-void
.end method

.method public final registerHandler(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setActiveProviderName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b:Ljava/lang/String;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setEditorDataProxy(Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->editorDataProxy:Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

    return-void
.end method

.method public final setEnableMultiClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w:Z

    return-void
.end method

.method public final setEnableStylusLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->x:Z

    return-void
.end method

.method public final setEnabledDoubleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v:Z

    return-void
.end method

.method public final setEnabledDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->t:Z

    return-void
.end method

.method public final setEnabledEraseTouchProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->n:Z

    return-void
.end method

.method public final setEnabledFingerTouchProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->l:Z

    return-void
.end method

.method public final setEnabledFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->s:Z

    return-void
.end method

.method public final setEnabledKeyProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->k:Z

    return-void
.end method

.method public final setEnabledLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p:Z

    return-void
.end method

.method public final setEnabledPan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->u:Z

    return-void
.end method

.method public final setEnabledProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->j:Z

    return-void
.end method

.method public final setEnabledScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->o:Z

    return-void
.end method

.method public final setEnabledScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->r:Z

    return-void
.end method

.method public final setEnabledSingleTapUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->q:Z

    return-void
.end method

.method public final setEnabledStylusTouchProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->m:Z

    return-void
.end method

.method public final setRulerTransformHandler(Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->g:Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;

    return-void
.end method

.method public final setShapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->shapeHandlerManager:Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    return-void
.end method

.method public final setStylusLongPressActive(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->f:Lcom/onyx/android/sdk/device/IDevice;

    if-nez p0, :cond_0

    const-string p0, "motionEventChecker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/device/IDevice;->setStylusLongPressActive(Z)V

    return-void
.end method

.method public final subscribeTouchEvent()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->subscribe()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    return-void
.end method

.method public final supportSingleTapClick(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isHwrTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final supportSingleTapClickOnNonEditMode(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->supportSingleTapClick(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isLinkShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isEraserHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchData$default(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final unregisterHandler(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getTouchModeFeature(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->i:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->c:Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;->getRxGesture()Lcom/onyx/android/sdk/rxgesture/RxGesture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->getGestureConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableMoveGesture(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableTwoMoveGesture(Z)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->w:Z

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableMultiClick(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableFlingGesture(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableCommonGesture(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableNoGesture(Z)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v:Z

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableDoubleGesture(Z)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p:Z

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableLongPressGesture(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPenTouch(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->isLongPress()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledMultiTouch(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableScaleGesture(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->p()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPalmReject(Z)V

    sget-object v2, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isCheckScaleSpanEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableScaleSpanCheck(Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setSingleTapConfirmedTimeMsThreshold(J)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setDoubleTapTimeMsThreshold(J)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setSingleTapTimeMsMax(J)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setSingleTapTimeMsMin(J)V

    return-void
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->d:Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->h:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    :cond_0
    return-void
.end method
