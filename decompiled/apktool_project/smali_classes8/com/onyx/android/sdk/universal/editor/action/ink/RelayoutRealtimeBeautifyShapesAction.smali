.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,529:1\n1855#2,2:530\n1864#2,3:532\n1549#2:536\n1620#2,3:537\n1549#2:555\n1620#2,3:556\n1549#2:559\n1620#2,3:560\n766#2:563\n857#2,2:564\n2333#2,14:566\n1940#2,14:580\n1940#2,14:594\n1940#2,14:608\n1549#2:622\n1620#2,3:623\n766#2:626\n857#2,2:627\n1045#2:629\n766#2:630\n857#2,2:631\n1549#2:633\n1620#2,3:634\n766#2:637\n857#2,2:638\n1549#2:640\n1620#2,3:641\n1549#2:644\n1620#2,3:645\n766#2:648\n857#2,2:649\n1045#2:651\n766#2:652\n857#2,2:653\n1#3:535\n41#4,5:540\n41#4,5:545\n41#4,5:550\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n*L\n83#1:530,2\n112#1:532,3\n148#1:536\n148#1:537,3\n222#1:555\n222#1:556,3\n224#1:559\n224#1:560,3\n243#1:563\n243#1:564,2\n244#1:566,14\n262#1:580,14\n275#1:594,14\n284#1:608,14\n375#1:622\n375#1:623,3\n382#1:626\n382#1:627,2\n383#1:629\n388#1:630\n388#1:631,2\n415#1:633\n415#1:634,3\n419#1:637\n419#1:638,2\n442#1:640\n442#1:641,3\n445#1:644\n445#1:645,3\n466#1:648\n466#1:649,2\n472#1:651\n481#1:652\n481#1:653,2\n166#1:540,5\n180#1:545,5\n188#1:550,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000c\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B;\u0012\u0006\u0010k\u001a\u00020j\u0012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010G\u001a\u00020D\u0012\u0006\u0010K\u001a\u00020H\u0012\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020H0L\u00a2\u0006\u0004\u0008l\u0010mJ\u000c\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J#\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0014\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0004H\u0002J\u0016\u0010\u0014\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\u0015\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J(\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\"\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002J\"\u0010&\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0008\u0008\u0002\u0010%\u001a\u00020$H\u0002J\u001c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J$\u0010+\u001a\u00020$2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J.\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0.2\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u00102\u001a\u00020\u00162\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u00103\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u00104\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u00107\u001a\u00020$2\u0006\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000cH\u0002J#\u00109\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00052\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010<\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010?\u001a\u00020$2\u0006\u0010>\u001a\u00020=H\u0002J\u000e\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001a\u0010O\u001a\u0008\u0012\u0004\u0012\u00020H0L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001d\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00050P8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010B\u001a\u0004\u0008Q\u0010RR\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050P8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010B\u001a\u0004\u0008T\u0010RR\u001a\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010BR\u001a\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010BR\u001a\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010BR\u0016\u0010X\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0010R\u0016\u0010Y\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u0010R\u0016\u0010Z\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0010R\u0016\u0010[\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010\u0010R\u0014\u0010\\\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u0010R\u0014\u0010^\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008]\u0010\u0010R\u0014\u0010_\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008<\u0010\u0010R\u0014\u0010`\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0010R\u0014\u0010a\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00084\u0010\u0010R\u0014\u0010b\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u0010\u0010R\u0014\u0010c\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0010R\u0014\u0010d\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00082\u0010\u0010R\u0014\u0010e\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008?\u0010\u0010R\u0014\u0010g\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008f\u0010\u0010R\u0014\u0010i\u001a\u00020H8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008h\u0010J\u00a8\u0006n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "s",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "N",
        "lineShapes",
        "",
        "H",
        "A",
        "shape",
        "",
        "fontSize",
        "J",
        "(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F",
        "F",
        "(Ljava/lang/Float;)F",
        "L",
        "x",
        "I",
        "E",
        "Landroid/graphics/RectF;",
        "previousRect",
        "currentRect",
        "firstLineShape",
        "textSizeForSpacing",
        "n",
        "currentLineRight",
        "currentShape",
        "previousShape",
        "o",
        "comparedShape",
        "l",
        "previousCharRight",
        "fontInnerSpacing",
        "",
        "dynamicSpacing",
        "u",
        "q",
        "r",
        "currentLineShapes",
        "lastLineShapes",
        "m",
        "baseLine",
        "startX",
        "Lkotlin/Pair;",
        "t",
        "shapes",
        "p",
        "O",
        "P",
        "y",
        "preTextSize",
        "nextTextSize",
        "z",
        "overriddenFontSize",
        "B",
        "(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;",
        "D",
        "w",
        "",
        "char",
        "Q",
        "create",
        "h",
        "Ljava/util/List;",
        "hwrShapes",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "i",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "typesetArgs",
        "",
        "j",
        "Ljava/lang/String;",
        "currentPageId",
        "",
        "k",
        "Ljava/util/Collection;",
        "relatedPageIds",
        "",
        "getRelayoutShapes",
        "()Ljava/util/List;",
        "relayoutShapes",
        "getLastLineShapes",
        "relatedShapes",
        "relayoutingShapes",
        "lastFormattedLineShapes",
        "charSpacing",
        "lineSpacing",
        "lineHeight",
        "whitespaceWidth",
        "charAlignRange",
        "v",
        "lineAlignRange",
        "sameLineRange",
        "newLineRange",
        "neighbouringLineRange",
        "whitespaceMinRange",
        "whitespaceMaxRange",
        "whitespaceMinRangeForCJK",
        "maxTextSizeDiffRate",
        "Z",
        "abnormalShapeSizeRange",
        "k0",
        "TAG",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;Ljava/util/Collection;)V",
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
        "SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,529:1\n1855#2,2:530\n1864#2,3:532\n1549#2:536\n1620#2,3:537\n1549#2:555\n1620#2,3:556\n1549#2:559\n1620#2,3:560\n766#2:563\n857#2,2:564\n2333#2,14:566\n1940#2,14:580\n1940#2,14:594\n1940#2,14:608\n1549#2:622\n1620#2,3:623\n766#2:626\n857#2,2:627\n1045#2:629\n766#2:630\n857#2,2:631\n1549#2:633\n1620#2,3:634\n766#2:637\n857#2,2:638\n1549#2:640\n1620#2,3:641\n1549#2:644\n1620#2,3:645\n766#2:648\n857#2,2:649\n1045#2:651\n766#2:652\n857#2,2:653\n1#3:535\n41#4,5:540\n41#4,5:545\n41#4,5:550\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n*L\n83#1:530,2\n112#1:532,3\n148#1:536\n148#1:537,3\n222#1:555\n222#1:556,3\n224#1:559\n224#1:560,3\n243#1:563\n243#1:564,2\n244#1:566,14\n262#1:580,14\n275#1:594,14\n284#1:608,14\n375#1:622\n375#1:623,3\n382#1:626\n382#1:627,2\n383#1:629\n388#1:630\n388#1:631,2\n415#1:633\n415#1:634,3\n419#1:637\n419#1:638,2\n442#1:640\n442#1:641,3\n445#1:644\n445#1:645,3\n466#1:648\n466#1:649,2\n472#1:651\n481#1:652\n481#1:653,2\n166#1:540,5\n180#1:545,5\n188#1:550,5\n*E\n"
    }
.end annotation


# instance fields
.field public final J:F

.field public final O:F

.field public final Q:F

.field public final Z:F

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k0:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public final u:F

.field public final v:F

.field public final w:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrShapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typesetArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relatedPageIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->k:Ljava/util/Collection;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->u:F

    const p2, 0x3e4ccccd    # 0.2f

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->v:F

    const/high16 p2, 0x40a00000    # 5.0f

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->w:F

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->x:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->y:F

    const/high16 p2, 0x3f400000    # 0.75f

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->z:F

    const/high16 p2, 0x40600000    # 3.5f

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->J:F

    const p2, 0x3f99999a    # 1.2f

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O:F

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->Q:F

    const p1, 0x3fb33333    # 1.4f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->Z:F

    const-string p1, "RelayoutRealtimeBeautifyShapesAction"

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->k0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->B(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Ljava/lang/Float;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->F(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->J(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Ljava/lang/Float;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->L(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$findRelatedHwrShapes(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentPageId$p(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNewLineRange$p(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->x:F

    return p0
.end method

.method public static final synthetic access$getRelatedShapes$p(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$isNonScaledShape(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->y(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTextSizeSimilar(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->z(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$measureLineHeight(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Ljava/lang/Float;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->F(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$measureShapeBaseline(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->J(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$relayoutHwrShapes(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->N()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;FFZILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->u(FFZ)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->H(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->E(Ljava/util/List;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->I(Ljava/util/List;)F

    move-result v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->t(FFLcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v0, v4, v3}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o(FLcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->layoutShape(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final B(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->copy()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    sget-object p2, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->loadGlyphRect(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final D(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->getUnionPathRect()Landroid/graphics/RectF;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public final E(Ljava/util/List;)F
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)F"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gez v7, :cond_3

    move-object v1, v3

    move v2, v6

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->l(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v1, v5, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->C(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p0

    return p1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->m(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_b

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    move-object v8, v7

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-gez v11, :cond_9

    move-object v7, v9

    move v8, v10

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    :goto_2
    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v0, v7}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->l(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getEnableUnifiedParams()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {p0, v0, v5, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->K(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)F

    move-result p0

    return p0

    :cond_c
    if-eqz v2, :cond_14

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gez v8, :cond_f

    move-object v1, v6

    move v2, v7

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_e

    :goto_4
    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->z(FF)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->H(Ljava/util/List;)V

    :cond_10
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->r:F

    goto :goto_6

    :cond_12
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v1, v5, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->C(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->r:F

    :goto_6
    add-float/2addr p1, p0

    return p1

    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_14
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-static {p0, p1, v5, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->K(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;ILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final F(Ljava/lang/Float;)F
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->copy()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->measureLineHeight(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)F

    move-result p0

    return p0
.end method

.method public final H(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getEnableUnifiedParams()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    :cond_1
    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->G(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Ljava/lang/Float;ILjava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s:F

    invoke-static {p0, v1, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->M(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Ljava/lang/Float;ILjava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->t:F

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getCharSpacingInPx()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q:F

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getLineSpacingInPx()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->r:F

    return-void
.end method

.method public final I(Ljava/util/List;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)F"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v3, v2, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;F)F

    move-result p0

    return p0

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->m(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_2
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s:F

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->u:F

    mul-float v5, v2, v4

    sub-float v5, v1, v5

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v5, v1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->D(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/RectKt;->toClosedRangeX(Landroid/graphics/RectF;)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->intersected(Lkotlin/ranges/ClosedRange;Lkotlin/ranges/ClosedRange;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 p0, 0x0

    goto :goto_5

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_4
    move-object p0, v1

    goto :goto_5

    :cond_8
    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_a

    move-object v1, v4

    move v2, v5

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :goto_5
    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz p0, :cond_b

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->measureShapeGlyphLeft(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F

    move-result p0

    return p0

    :cond_b
    iget p0, v3, Landroid/graphics/RectF;->left:F

    return p0
.end method

.method public final J(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->copy()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    invoke-virtual {v0, p0, p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->loadFontPath(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final L(Ljava/lang/Float;)F
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->copy()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->measureWhitespaceWidth(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)F

    move-result p0

    return p0
.end method

.method public final N()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->x()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->p:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-static {v6, v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->m:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->k0:Ljava/lang/String;

    const-string v2, "relayout error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public final P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final Q(C)Z
    .locals 3

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isCJK(C)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Character;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLastLineShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->m:Ljava/util/List;

    return-object p0
.end method

.method public final getRelayoutShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->l:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->z(FF)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->H(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p2, p1

    const/4 v0, 0x0

    if-gtz p2, :cond_2

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s:F

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->y:F

    mul-float/2addr p2, p0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final n(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;F)F
    .locals 8

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, p2

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->w(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F

    move-result v7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->L(Ljava/lang/Float;)F

    move-result p4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->B(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;

    move-result-object p3

    iget v2, p3, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->v(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;FFZILjava/lang/Object;)F

    move-result p3

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->J:F

    mul-float/2addr v0, p4

    cmpl-float v0, v6, v0

    if-lez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    mul-float/2addr p4, v7

    cmpl-float p1, v6, p4

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->t:F

    add-float/2addr p2, p1

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q:F

    add-float/2addr p2, p0

    return p2

    :cond_1
    return p3
.end method

.method public final o(FLcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F
    .locals 9

    if-nez p3, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float p3, v0, p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->L(Ljava/lang/Float;)F

    move-result v1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->w(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->B(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;

    move-result-object p2

    iget v5, p2, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->v(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;FFZILjava/lang/Object;)F

    move-result p2

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->J:F

    mul-float/2addr v3, v1

    cmpl-float v3, p3, v3

    if-lez v3, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_3
    mul-float/2addr v1, v2

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_4

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->t:F

    add-float/2addr p1, p2

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q:F

    add-float/2addr p1, p0

    return p1

    :cond_4
    return p2
.end method

.method public final p(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->getUnionPathRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->getSourceShapeGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->Z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final q(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v7

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s:F

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->v:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/ranges/ClosedFloatingPointRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$filterSameLineShapes$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$filterSameLineShapes$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->L(Ljava/lang/Float;)F

    move-result v9

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->w:F

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    goto :goto_3

    :cond_8
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->w:F

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v4

    iget v3, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->intersected(Lkotlin/ranges/ClosedRange;Lkotlin/ranges/ClosedRange;)Z

    move-result v2

    if-nez v2, :cond_9

    move v1, v8

    goto :goto_6

    :cond_9
    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    if-nez v3, :cond_a

    move-object v3, v5

    :cond_a
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v6, v5

    goto :goto_4

    :cond_b
    move-object v6, v1

    :goto_4
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getTypeface()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v13, v5

    goto :goto_5

    :cond_c
    move-object v13, v1

    :goto_5
    move-object v1, v2

    move-object v2, v7

    move-object v5, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->isSameLine(Landroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_7

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    return-object v10
.end method

.method public final r(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v7

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v2

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->n:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->P(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Landroid/graphics/RectF;

    move-result-object v4

    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v3, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->intersected(Lkotlin/ranges/ClosedRange;Lkotlin/ranges/ClosedRange;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    if-nez v3, :cond_4

    move-object v3, v5

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v6, v5

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getTypeface()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v11, v5

    goto :goto_3

    :cond_6
    move-object v11, v1

    :goto_3
    move-object v1, v2

    move-object v2, v7

    move-object v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->isUpperLine(Landroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v8
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$predicate$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$predicate$1;

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "shapeType"

    invoke-virtual {v2, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/LoadPageShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->k:Ljava/util/Collection;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/LoadPageShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(FFLcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    if-nez p3, :cond_2

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$1;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$2;

    invoke-static {v0, v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->F(Ljava/lang/Float;)F

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->i:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getLineSpacing()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_3
    const v3, 0x3f8ccccd    # 1.1f

    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    :cond_4
    mul-float/2addr v3, v1

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->o:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-static {v0, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->x:F

    mul-float/2addr v8, v1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    move v7, v2

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_5

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$$inlined$sortedBy$1;-><init>()V

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v0, :cond_8

    new-instance p0, Lkotlin/Pair;

    sget-object p3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_8
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->measureShapeBaseline(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F

    move-result p1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->B(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;

    move-result-object p3

    iget v3, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p3

    iget v2, p3, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->v(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;FFZILjava/lang/Object;)F

    move-result p0

    new-instance p3, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-direct {p3, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final u(FFZ)F
    .locals 0

    if-eqz p3, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q:F

    add-float/2addr p1, p0

    add-float/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->q:F

    add-float/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final w(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)F
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->charAt(Ljava/lang/String;IC)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->Q(C)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->O:F

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->z:F

    :goto_0
    return p0
.end method

.method public final x()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->h:Ljava/util/List;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$groupLineShapes$grouped$1;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$groupLineShapes$grouped$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->group(Ljava/util/List;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final y(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final z(FF)Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p1

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->Q:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
