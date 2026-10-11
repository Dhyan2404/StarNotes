.class public final Lcom/onyx/android/sdk/ui/wheelview/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;,
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$Companion;,
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;,
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$IPickerViewData;,
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$LoopViewGestureListener;,
        Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008;\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00cb\u00012\u00020\u0001:\u000c\u00cc\u0001\u00cb\u0001\u00cd\u0001\u00ce\u0001\u00cf\u0001\u00d0\u0001B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0010\u00c7\u0001\u001a\u0005\u0018\u00010\u00c6\u0001\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001B\u0013\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00ca\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\nJ\u0006\u0010 \u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u0011J\u0010\u00102\u001a\u00020\u00022\u0008\u00101\u001a\u0004\u0018\u000100J\u0014\u00105\u001a\u00020\u00022\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u001403J\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00022\u0006\u00108\u001a\u00020!J\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001403J\u0006\u0010;\u001a\u00020\u0011J\u0006\u0010<\u001a\u00020\u000eJ\u0006\u0010=\u001a\u00020\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0014J\u0018\u0010C\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u0011H\u0014J\u0010\u0010F\u001a\u00020!2\u0006\u0010E\u001a\u00020DH\u0017J\u0006\u0010G\u001a\u00020\u0011J\u0010\u0010I\u001a\u00020\u00022\u0008\u0010H\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010J\u001a\u00020\u00022\u0006\u0010J\u001a\u00020!J\u000e\u0010L\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u0011J\u001a\u0010P\u001a\u00020\u00112\u0008\u0010N\u001a\u0004\u0018\u00010M2\u0008\u0010O\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010R\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020!J\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\u0011J\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u0011J\u000e\u0010X\u001a\u00020\u00022\u0006\u0010W\u001a\u00020\u0011J\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0011J\u000e\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\u0011J\u0010\u0010_\u001a\u00020\u00022\u0008\u0010^\u001a\u0004\u0018\u00010]J\u000e\u0010a\u001a\u00020\u00022\u0006\u0010`\u001a\u00020\nJ\u0006\u0010b\u001a\u00020!J\u0006\u0010c\u001a\u00020\nJ\u000e\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020\nJ\u0006\u0010f\u001a\u00020\nJ\u0006\u0010g\u001a\u00020\u0011J\n\u0010i\u001a\u0004\u0018\u00010hH\u0016R\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010jR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010kR\u0018\u0010m\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010oR\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010qR\u0016\u0010s\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010rR\u0016\u0010J\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010rR\u0014\u0010w\u001a\u00020u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010vR\u001c\u0010z\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010yR\u0016\u0010|\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010{R\u0016\u0010~\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010{R\u001e\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u0014038\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010H\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0086\u0001R\u0019\u0010\u008b\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u0086\u0001R\u0019\u0010\u008d\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u0086\u0001R\u0018\u0010W\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u0086\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u0094\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0018\u0010S\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0086\u0001R\u0018\u0010U\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0086\u0001R\u0018\u0010[\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0086\u0001R\u0018\u0010Y\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0086\u0001R\u0018\u0010`\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u0090\u0001R\u0017\u0010b\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u0010rR\u0019\u0010\u009c\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u0090\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u0090\u0001R\u0019\u0010\u00a0\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u0090\u0001R\u0018\u0010d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u0090\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u0086\u0001R\u0019\u0010\u00a5\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u0086\u0001R\u0019\u0010\u00a7\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u0086\u0001R\u0019\u0010\u00a9\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u0086\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u0086\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u0086\u0001R\u0019\u0010\u00af\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u0086\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u0086\u0001R\u0019\u0010\u00b3\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u0090\u0001R\u001a\u0010\u00b6\u0001\u001a\u00030\u00b4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u0096\u0001R\u0018\u0010A\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u0086\u0001R\u0019\u0010\u00b9\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u0086\u0001R\u0019\u0010\u00bb\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u0086\u0001R\u0019\u0010\u00bd\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u0086\u0001R\u0019\u0010\u00bf\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u0090\u0001R\u0019\u0010\u00c1\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u0090\u0001R\u0019\u0010\u00c3\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u0090\u0001R\u0018\u0010\u00c5\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c4\u0001\u0010r\u00a8\u0006\u00d1\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "Landroid/view/View;",
        "",
        "g",
        "Landroid/content/Context;",
        "context",
        "e",
        "f",
        "l",
        "h",
        "",
        "offsetCoefficient",
        "angle",
        "n",
        "",
        "contentText",
        "m",
        "",
        "i",
        "d",
        "",
        "item",
        "b",
        "timeNum",
        "c",
        "content",
        "j",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;",
        "action",
        "smoothScroll",
        "velocityY",
        "scrollBy",
        "cancelFuture",
        "",
        "cyclic",
        "setCyclic",
        "Landroid/graphics/Typeface;",
        "font",
        "setTypeface",
        "skew",
        "setTextSkewX",
        "size",
        "setTextSize",
        "setTextSizeOut",
        "setTextSizePx",
        "setTextSizeOutPx",
        "currentItem",
        "setCurrentItem",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;",
        "onItemSelectedListener",
        "setOnItemSelectedListener",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;",
        "adapter",
        "setAdapter",
        "visibleCount",
        "setItemsVisibleCount",
        "alphaGradient",
        "setAlphaGradient",
        "getAdapter",
        "getCurrentItem",
        "getCurrentItemText",
        "onItemSelected",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "getItemsCount",
        "label",
        "setLabel",
        "isCenterLabel",
        "gravity",
        "setGravity",
        "Landroid/graphics/Paint;",
        "paint",
        "str",
        "getTextWidth",
        "options",
        "setIsOptions",
        "textColorOut",
        "setTextColorOut",
        "textColorCenter",
        "setTextColorCenter",
        "textXOffset",
        "setTextXOffset",
        "dividerWidth",
        "setDividerWidth",
        "dividerColor",
        "setDividerColor",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;",
        "dividerType",
        "setDividerType",
        "lineSpacingMultiplier",
        "setLineSpacingMultiplier",
        "isLoop",
        "getTotalScrollY",
        "totalScrollY",
        "setTotalScrollY",
        "getItemHeight",
        "getInitPosition",
        "Landroid/os/Handler;",
        "getHandler",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;",
        "Landroid/content/Context;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/view/GestureDetector;",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;",
        "Z",
        "isOptions",
        "k",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "mExecutor",
        "Ljava/util/concurrent/ScheduledFuture;",
        "Ljava/util/concurrent/ScheduledFuture;",
        "mFuture",
        "Landroid/graphics/Paint;",
        "paintOuterText",
        "o",
        "paintCenterText",
        "p",
        "paintIndicator",
        "q",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;",
        "r",
        "Ljava/lang/String;",
        "s",
        "I",
        "textSize",
        "t",
        "textSizeOut",
        "u",
        "maxTextWidth",
        "v",
        "maxTextHeight",
        "w",
        "x",
        "F",
        "itemHeight",
        "y",
        "Landroid/graphics/Typeface;",
        "typeface",
        "z",
        "J",
        "O",
        "Q",
        "k0",
        "q0",
        "t0",
        "firstLineY",
        "u0",
        "secondLineY",
        "v0",
        "centerY",
        "w0",
        "x0",
        "initPosition",
        "y0",
        "selectedItem",
        "z0",
        "preCurrentIndex",
        "A0",
        "itemsVisible",
        "B0",
        "measuredHeight",
        "C0",
        "measuredWidth",
        "D0",
        "radius",
        "E0",
        "mOffset",
        "F0",
        "previousY",
        "",
        "G0",
        "startTime",
        "H0",
        "I0",
        "mGravity",
        "J0",
        "drawCenterContentStart",
        "K0",
        "drawOutContentStart",
        "L0",
        "centerContentOffset",
        "M0",
        "textSkewX",
        "N0",
        "scaleContentFactor",
        "O0",
        "isAlphaGradient",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "Companion",
        "ACTION",
        "DividerType",
        "IPickerViewData",
        "LoopViewGestureListener",
        "OnItemSelectedListener",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/wheelview/WheelView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final P0:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Q0:I = 0x5

.field public static final R0:F = 0.8f

.field public static final S0:F = 0.5f


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:F

.field public G0:J

.field public H0:I

.field public I0:I

.field public J:I

.field public J0:I

.field public K0:I

.field public L0:F

.field public M0:F

.field public N0:F

.field public O:I

.field public O0:Z

.field public Q:I

.field public e:Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public k0:F

.field public final l:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Z

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:I

.field public t:I

.field public t0:F

.field public u:I

.field public u0:F

.field public v:I

.field public v0:F

.field public w:I

.field public w0:F

.field public x:F

.field public x0:I

.field public y:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y0:I

.field public z:I

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->Companion:Lcom/onyx/android/sdk/ui/wheelview/WheelView$Companion;

    const-string v2, "00"

    const-string v3, "01"

    const-string v4, "02"

    const-string v5, "03"

    const-string v6, "04"

    const-string v7, "05"

    const-string v8, "06"

    const-string v9, "07"

    const-string v10, "08"

    const-string v11, "09"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->P0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadScheduledExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    .line 7
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string v1, "MONOSPACE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y:Landroid/graphics/Typeface;

    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    const/16 v1, 0xb

    .line 9
    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    const/16 v1, 0x11

    .line 10
    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->I0:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    iput v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->N0:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/onyx/android/sdk/uicommon/R$dimen;->wheel_view_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    .line 13
    iput v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 15
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    const v0, 0x4019999a    # 2.4f

    .line 16
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    goto :goto_0

    :cond_0
    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    cmpg-float v2, v3, v0

    if-gez v2, :cond_1

    const/high16 v0, 0x40800000    # 4.0f

    .line 17
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v3

    const/high16 v2, 0x40400000    # 3.0f

    if-gtz v0, :cond_2

    cmpg-float v0, v3, v2

    if-gez v0, :cond_2

    const/high16 v0, 0x40c00000    # 6.0f

    .line 18
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    goto :goto_0

    :cond_2
    cmpl-float v0, v3, v2

    if-ltz v0, :cond_3

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v3, v0

    .line 19
    iput v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 20
    sget-object v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->I0:I

    .line 22
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textColorOut:I

    const v1, -0x575758

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z:I

    .line 23
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textSkewX:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->M0:F

    .line 24
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textScaleContentFactor:I

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->N0:F

    .line 25
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textColorCenter:I

    const v1, -0xd5d5d6

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 26
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J:I

    .line 27
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_dividerColor:I

    const v1, -0x2a2a2b

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->O:I

    .line 28
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_dividerWidth:I

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->Q:I

    .line 29
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textSize:I

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 30
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    .line 31
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_textSizeOut:I

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t:I

    .line 32
    sget v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView_wheelview_lineSpacingMultiplier:I

    .line 33
    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    .line 35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->g()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->i:Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItem()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;->onItemSelected(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/onyx/android/sdk/ui/wheelview/WheelView$IPickerViewData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/onyx/android/sdk/ui/wheelview/WheelView$IPickerViewData;

    invoke-interface {p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView$IPickerViewData;->getPickerViewText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->P0:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final cancelFuture()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final d(I)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-gez p1, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-interface {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->d(I)I

    move-result p1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_4

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-interface {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->d(I)I

    move-result p1

    :cond_4
    :goto_2
    return p1
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->f:Landroid/content/Context;

    new-instance v0, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/wheelview/MessageHandler;-><init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->g:Landroid/os/Handler;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/onyx/android/sdk/ui/wheelview/WheelView$LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView$LoopViewGestureListener;-><init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->h:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->f()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->O:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAdapter()Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getCurrentItem()I
    .locals 8

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y0:I

    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    invoke-interface {v4}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y0:I

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    int-to-double v6, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    return p0

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y0:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez p0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p0

    :goto_1
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    invoke-static {v1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    return p0
.end method

.method public final getCurrentItemText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public final getInitPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    return p0
.end method

.method public final getItemHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    return p0
.end method

.method public final getItemsCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result p0

    return p0
.end method

.method public final getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [F

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, p0

    :goto_2
    if-ge p0, v0, :cond_2

    aget p2, v1, p0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    move p0, p1

    :cond_3
    return p0
.end method

.method public final getTotalScrollY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    return p0
.end method

.method public final h()V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    iget-object v6, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v6, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_1
    invoke-interface {v6, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v6, v4, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    if-le v6, v7, :cond_2

    iput v6, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    const-string v2, "\u661f\u671f"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->I0:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_1
    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    :goto_2
    return-void
.end method

.method public final isCenterLabel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    return-void
.end method

.method public final isLoop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    return p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->I0:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_1
    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    :goto_2
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->h()V

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->B0:I

    int-to-double v0, v0

    div-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->H0:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->B0:I

    int-to-float v1, v0

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v0:F

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    :goto_0
    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    if-le v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public final n(FF)V
    .locals 5

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->M0:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->O0:Z

    const/16 v0, 0xff

    if-eqz p1, :cond_3

    const/high16 p1, 0x42b40000    # 90.0f

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double p1, v1, p1

    div-double/2addr p1, v1

    int-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-int v0, p1

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    const-string v9, "adapter"

    if-nez v3, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    :try_start_0
    iget-object v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v3, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    invoke-interface {v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "WheelView"

    const-string v2, "adapter.getItemsCount() == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    const/4 v10, 0x0

    if-nez v1, :cond_6

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    if-gez v1, :cond_3

    iput v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    :cond_3
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_4
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_b

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v1, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    goto :goto_1

    :cond_6
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    if-gez v1, :cond_8

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_7
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    :cond_8
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_9
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_b

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_a

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_a
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    :cond_b
    :goto_1
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    rem-float v11, v1, v2

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;

    sget-object v2, Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;->WRAP:Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;

    const/high16 v3, 0x41200000    # 10.0f

    const/16 v4, 0xc

    const/4 v12, 0x0

    if-ne v1, v2, :cond_e

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_c
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    :goto_2
    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v2, v1, v12

    if-gtz v2, :cond_d

    move v13, v3

    goto :goto_3

    :cond_d
    move v13, v1

    :goto_3
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v1, v1

    sub-float v14, v1, v13

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    iget-object v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move v3, v5

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    iget-object v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_e
    sget-object v2, Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;->CIRCLE:Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;

    if-ne v1, v2, :cond_11

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->Q:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v2

    goto :goto_4

    :cond_f
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    :goto_4
    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpg-float v4, v1, v12

    if-gtz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v1

    :goto_5
    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const v1, 0x3fe66666    # 1.8f

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->B0:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_6
    iget-object v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-float v1, v1

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v0:F

    iget-object v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_12
    move v1, v10

    :goto_7
    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    if-ge v1, v2, :cond_1f

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    iget-boolean v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    if-eqz v2, :cond_14

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->d(I)I

    move-result v2

    iget-object v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v3, :cond_13

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_13
    invoke-interface {v3, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_14
    const-string v2, ""

    if-gez v3, :cond_15

    goto :goto_8

    :cond_15
    iget-object v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v4, :cond_16

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_16
    invoke-interface {v4}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_17

    goto :goto_8

    :cond_17
    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_18

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_18
    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v3, v11

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double v5, v3, v5

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v13

    const-wide v13, 0x4056800000000000L    # 90.0

    sub-double/2addr v13, v5

    double-to-float v5, v13

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v13, v5, v6

    if-gtz v13, :cond_1e

    const/high16 v13, -0x3d4c0000    # -90.0f

    cmpg-float v13, v5, v13

    if-gez v13, :cond_19

    goto/16 :goto_c

    :cond_19
    iget-boolean v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k:Z

    if-nez v13, :cond_1a

    iget-object v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1a

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_1a
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v16, v9

    float-to-double v8, v6

    div-double/2addr v13, v8

    const-wide v8, 0x400199999999999aL    # 2.2

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->j(Ljava/lang/String;)V

    iget v8, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-double v8, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    iget v15, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    move/from16 v17, v11

    int-to-double v10, v15

    mul-double/2addr v13, v10

    sub-double/2addr v8, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-double v13, v13

    mul-double/2addr v10, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v13

    sub-double/2addr v8, v10

    double-to-float v8, v8

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    cmpg-float v10, v8, v9

    const/high16 v11, 0x3f800000    # 1.0f

    if-gtz v10, :cond_1b

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    cmpl-float v10, v10, v9

    if-ltz v10, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v9, v9

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    sub-float/2addr v10, v8

    invoke-virtual {v7, v12, v12, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->N0:F

    mul-float/2addr v9, v10

    invoke-virtual {v7, v11, v9}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, v6, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n(FF)V

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    int-to-float v5, v5

    iget v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v6, v6

    iget-object v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->t0:F

    sub-float/2addr v5, v8

    iget v6, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v6, v6

    iget v8, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v12, v5, v6, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v11

    invoke-virtual {v7, v11, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v4, v4

    iget v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_a
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_1b
    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    cmpg-float v13, v8, v10

    if-gtz v13, :cond_1c

    iget v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v13, v13

    add-float/2addr v13, v8

    cmpl-float v13, v13, v10

    if-ltz v13, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v9, v9

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    sub-float/2addr v10, v8

    invoke-virtual {v7, v12, v12, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-virtual {v7, v11, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    int-to-float v9, v9

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v10, v10

    iget v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    sub-float/2addr v10, v13

    iget-object v13, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v9, v10, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->u0:F

    sub-float/2addr v9, v8

    iget v8, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    int-to-float v8, v8

    iget v10, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v12, v9, v8, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->N0:F

    mul-float/2addr v3, v4

    invoke-virtual {v7, v11, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, v6, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n(FF)V

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_1c
    cmpl-float v9, v8, v9

    if-ltz v9, :cond_1d

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v13, v9

    add-float/2addr v13, v8

    cmpg-float v8, v13, v10

    if-gtz v8, :cond_1d

    int-to-float v3, v9

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->L0:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J0:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z0:I

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y0:I

    goto/16 :goto_a

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget v9, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->N0:F

    mul-float/2addr v3, v4

    invoke-virtual {v7, v11, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, v6, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n(FF)V

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->K0:I

    int-to-float v3, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->v:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    iget v3, v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_d

    :cond_1e
    :goto_c
    move-object/from16 v16, v9

    move/from16 v17, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, v16

    move/from16 v11, v17

    goto/16 :goto_7

    :cond_1f
    return-void
.end method

.method public final onItemSelected()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->i:Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/e7o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/e7o;-><init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->H0:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->l()V

    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->C0:I

    iget p2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->B0:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->h:Landroid/view/GestureDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    if-nez v2, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const-wide/16 v6, 0x78

    const/4 v8, 0x2

    if-eq v4, v3, :cond_5

    if-eq v4, v8, :cond_2

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-double v9, v2

    mul-double/2addr v0, v9

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    int-to-float v4, v8

    div-float v4, v2, v4

    float-to-double v9, v4

    add-double/2addr v0, v9

    float-to-double v9, v2

    div-double/2addr v0, v9

    double-to-int v0, v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    rem-float/2addr v1, v2

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    div-int/2addr v4, v8

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->E0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->G0:J

    sub-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->DAGGLE:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->CLICK:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->F0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->F0:F

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    iget-boolean v6, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    if-nez v6, :cond_8

    iget v6, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v8, v6, v7

    sub-float v8, v4, v8

    cmpg-float v1, v8, v1

    const/4 v8, 0x0

    if-gez v1, :cond_3

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_4

    :cond_3
    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    cmpl-float v1, v6, v2

    if-lez v1, :cond_8

    cmpl-float v1, v0, v8

    if-lez v1, :cond_8

    :cond_4
    sub-float/2addr v4, v0

    iput v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    move v5, v3

    goto :goto_0

    :cond_5
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->D0:I

    int-to-double v9, v2

    mul-double/2addr v0, v9

    iget v2, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    int-to-float v4, v8

    div-float v4, v2, v4

    float-to-double v9, v4

    add-double/2addr v0, v9

    float-to-double v9, v2

    div-double/2addr v0, v9

    double-to-int v0, v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    rem-float/2addr v1, v2

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    div-int/2addr v4, v8

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->E0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->G0:J

    sub-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->DAGGLE:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->CLICK:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->G0:J

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->F0:F

    :cond_8
    :goto_0
    if-nez v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return v3
.end method

.method public final scrollBy(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;-><init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final setAdapter(Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q:Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->l()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setAlphaGradient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->O0:Z

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y0:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x0:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->q0:Z

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->O:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setDividerType(Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;

    return-void
.end method

.method public final setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->Q:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->p:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->I0:I

    return-void
.end method

.method public final setIsOptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->j:Z

    return-void
.end method

.method public final setItemsVisibleCount(I)V
    .locals 1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->A0:I

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->r:Ljava/lang/String;

    return-void
.end method

.method public final setLineSpacingMultiplier(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->k0:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->g()V

    :cond_1
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->i:Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;

    return-void
.end method

.method public final setTextColorCenter(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->J:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setTextColorOut(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->z:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->f:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextSizePx(F)V

    :cond_0
    return-void
.end method

.method public final setTextSizeOut(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->f:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextSizeOutPx(F)V

    :cond_0
    return-void
.end method

.method public final setTextSizeOutPx(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-int v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final setTextSizePx(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-int v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->s:I

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final setTextSkewX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->M0:F

    return-void
.end method

.method public final setTextXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w:I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    :cond_0
    return-void
.end method

.method public final setTotalScrollY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->o:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public final smoothScroll(Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->FLING:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;->DAGGLE:Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;

    if-ne p1, v0, :cond_2

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->w0:F

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->x:F

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->E0:I

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_1
    neg-int p1, p1

    :goto_0
    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->E0:I

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;

    iget p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->E0:I

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;-><init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->m:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
