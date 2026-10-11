.class public final Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;,
        Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniversalShapeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,896:1\n1864#2,3:897\n2310#2,14:900\n1855#2,2:914\n350#2,7:918\n13309#3,2:916\n1#4:925\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n*L\n283#1:897,3\n490#1:900,14\n651#1:914,2\n798#1:918,7\n676#1:916,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0002\u00ca\u0001B\u0011\u0012\u0006\u0010l\u001a\u00020j\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0002H\u0002J\"\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\u001a\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020\u0007H\u0002J\u0008\u0010#\u001a\u00020\u0007H\u0002J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J \u0010.\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0002J\u0008\u00100\u001a\u00020\u0014H\u0002J\u0008\u00101\u001a\u00020\u0007H\u0002J\u0008\u00102\u001a\u00020\u0007H\u0002J\u0008\u00103\u001a\u00020\u0010H\u0002J\u0008\u00104\u001a\u00020\u0007H\u0002J\u0008\u00105\u001a\u00020\u0002H\u0002J\u0010\u00106\u001a\u00020,2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u00109\u001a\u00020\u00122\u0006\u00108\u001a\u000207H\u0002J\u0008\u0010;\u001a\u0004\u0018\u00010:J\u0006\u0010<\u001a\u00020,J\u001e\u0010@\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0014J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AJ\u0010\u0010F\u001a\u00020\u00072\u0008\u0010E\u001a\u0004\u0018\u00010DJ\u000e\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020GJ\u000e\u0010K\u001a\u00020\u00142\u0006\u0010J\u001a\u00020\u0002J\u000e\u0010L\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010M\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010N\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010O\u001a\u00020\u0007J\u0006\u0010P\u001a\u00020\u0007J\u0006\u0010Q\u001a\u00020\u0014J\u0006\u0010R\u001a\u00020\u0014J\u0006\u0010S\u001a\u00020\u0014J\u0006\u0010T\u001a\u00020\u0014J\u0006\u0010U\u001a\u00020\u0014J\u0006\u0010V\u001a\u00020\u0014J\u0006\u0010W\u001a\u00020\u0014J\u0006\u0010X\u001a\u00020\u0007J\u0016\u0010Y\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014J\u001a\u0010Z\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010,J\u0018\u0010[\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0008\u0008\u0002\u0010-\u001a\u00020,J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*J\u000e\u0010]\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*J\u0016\u0010^\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,J\u000e\u0010a\u001a\u00020\u00072\u0006\u0010`\u001a\u00020_J\u0008\u0010c\u001a\u0004\u0018\u00010bJ\u0006\u0010d\u001a\u00020bJ\u0006\u0010e\u001a\u00020bJ\u0006\u0010f\u001a\u00020\u0007J\u000e\u0010g\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020\u0002R\u0014\u0010l\u001a\u00020j8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010kR$\u0010r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010m\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR(\u0010x\u001a\u0008\u0012\u0004\u0012\u00020%0$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u0014\u0010{\u001a\u00020y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010zR\u0014\u0010~\u001a\u00020|8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010}R\u0017\u0010\u0080\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010\u007fR\'\u0010\u0085\u0001\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008\'\u0010\u007f\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R*\u0010\u008b\u0001\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u00089\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008d\u0001\u001a\u00020b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0011\u0010\u008c\u0001R\u0019\u0010\u0090\u0001\u001a\u00030\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u008f\u0001R\u0017\u0010\u0091\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010#R\u001d\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010sR\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000c\u0010\u0093\u0001R\u0018\u0010\u0095\u0001\u001a\u00020b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008&\u0010\u008c\u0001R\u0019\u0010\u0098\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000f\u0010\u0097\u0001R\u0017\u0010\u0099\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00102R\u0018\u0010\u009b\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u00102R\u0018\u0010\u009c\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0016\u0010\u0093\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u0093\u0001R(\u0010\u00a4\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0017\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u001a\u0010\u00a8\u0001\u001a\u00030\u00a5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0018\u0010\u00aa\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00080\u0010\u00a9\u0001R\u0019\u0010\u00ad\u0001\u001a\u00030\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0008\u0010\u00ac\u0001R\u0019\u0010\u00ae\u0001\u001a\u00030\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\n\u0010\u00ac\u0001R\u0017\u0010\u00af\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00102R\u001a\u0010\u00b1\u0001\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001d\u0010\u00b0\u0001R\u0017\u0010\u00b2\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u007fR,\u0010\u00b6\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b3\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u0010s\u001a\u0005\u0008\u00b4\u0001\u0010u\"\u0005\u0008\u00b5\u0001\u0010wR\u0017\u0010`\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001c\u0010\u00b7\u0001R\u0017\u0010\u00ba\u0001\u001a\u00030\u00b8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00081\u0010\u00b9\u0001R\u0017\u0010\u00bd\u0001\u001a\u00030\u00bb\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u00bc\u0001R\u0017\u0010\u00c0\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00082\u0010\u00bf\u0001R\u0017\u0010\u00c3\u0001\u001a\u00030\u00c1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\"\u0010\u00c2\u0001R\u0018\u0010\u00c4\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00084\u0010\u0093\u0001R\u0018\u0010\u00c5\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u0093\u0001R\u0019\u0010\u00c7\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u0093\u0001\u00a8\u0006\u00cb\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPointInPage",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "b",
        "universalShape",
        "",
        "w",
        "touchPoint",
        "x",
        "l",
        "m",
        "E",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "o",
        "",
        "i",
        "",
        "hotRadius",
        "",
        "isTryMode",
        "r",
        "t",
        "p",
        "A",
        "B",
        "c",
        "C",
        "z",
        "lastPointInPage",
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;",
        "a",
        "y",
        "G",
        "I",
        "",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "n",
        "g",
        "Lcom/onyx/android/sdk/genericshape/Polygon;",
        "polygon",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "d",
        "e",
        "v",
        "D",
        "F",
        "f",
        "H",
        "k",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "h",
        "",
        "getFeatureCollectionStr",
        "getFeatureMatrix",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "upTouchData",
        "editImmediately",
        "onShapeEdit",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "attr",
        "updateShapeAttr",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "updateVirtualBoxInfo",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "point",
        "onInterceptTouchDown",
        "onShapeDown",
        "onShapeMove",
        "onShapeUp",
        "correctShapeByGuideLine",
        "clearGuideLine",
        "isAddMode",
        "isEditMode",
        "isUndefinedMode",
        "isUndefinedTransformAction",
        "isWaitingEdit",
        "isDragAction",
        "isScaleAction",
        "clear",
        "hitTestByPriority",
        "drawSelectionPoints",
        "drawAngles",
        "drawRotationHandle",
        "drawGuidelines",
        "drawExtraShapeContent",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "updateRenderContext",
        "Landroid/graphics/RectF;",
        "getShapeRectFWithWidth",
        "getShapeRectInPage",
        "getShapeRectInRender",
        "onThemeUpdated",
        "convertTouchPointFromPageToRender",
        "touchPointInRender",
        "convertTouchPointFromRenderToPage",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "setShape",
        "(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V",
        "shape",
        "Ljava/util/List;",
        "getGuidelines",
        "()Ljava/util/List;",
        "setGuidelines",
        "(Ljava/util/List;)V",
        "guidelines",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "touchVelocityTracker",
        "Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;",
        "Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;",
        "touchDebouncer",
        "Landroid/graphics/Matrix;",
        "transformMatrix",
        "getBoxMatrix",
        "()Landroid/graphics/Matrix;",
        "setBoxMatrix",
        "(Landroid/graphics/Matrix;)V",
        "boxMatrix",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "boxInfo",
        "Landroid/graphics/RectF;",
        "limitRect",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;",
        "editMode",
        "selectionPointIndex",
        "selectionPoints",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "hitTestSelectionPoint",
        "shapeRectF",
        "Lcom/onyx/android/sdk/genericshape/SelectionPointType;",
        "Lcom/onyx/android/sdk/genericshape/SelectionPointType;",
        "selectionPointType",
        "selectionPointRadius",
        "q",
        "hitTestRadius",
        "lastPoint",
        "s",
        "donePoint",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "getTransformAction",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "setTransformAction",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V",
        "transformAction",
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
        "u",
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
        "universalShapeAttr",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "universalShapeArgs",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "selectionPointFillPaint",
        "selectionPointStrokePaint",
        "strokeWidthInPage",
        "Ljava/lang/String;",
        "featureCollectionStr",
        "featureMatrix",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getReferenceShapes",
        "setReferenceShapes",
        "referenceShapes",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;",
        "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;",
        "rotationHandleRender",
        "Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;",
        "Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;",
        "polygonAnglePainter",
        "Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;",
        "Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;",
        "singleAnglePainter",
        "Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;",
        "Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;",
        "guideLineRender",
        "rotationStart",
        "rotationCenter",
        "J",
        "creationStart",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "Mode",
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
        "SMAP\nUniversalShapeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,896:1\n1864#2,3:897\n2310#2,14:900\n1855#2,2:914\n350#2,7:918\n13309#3,2:916\n1#4:925\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n*L\n283#1:897,3\n490#1:900,14\n651#1:914,2\n798#1:918,7\n676#1:916,2\n*E\n"
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public H:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public J:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:F

.field public q:F

.field public r:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:F

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 25
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "editorBundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-direct {v1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i:Landroid/graphics/RectF;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    const/4 v1, -0x1

    iput v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    sget-object v2, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v2

    iput v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p:F

    const/4 v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->q:F

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x7f

    const/16 v24, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->s:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance v2, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;-><init>()V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;-><init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->x:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->A:Landroid/graphics/Matrix;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->B:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->D:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v14, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x7f

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static final synthetic access$getHitTestSelectionPoint$p(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPoints$p(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic drawAngles$default(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawAngles(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic drawSelectionPoints$default(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawSelectionPoints(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;Lcom/onyx/android/sdk/base/data/TouchPoint;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;Lcom/onyx/android/sdk/base/data/TouchPoint;FZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;Lcom/onyx/android/sdk/base/data/TouchPoint;FZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 6

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getUseFixedRatio()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->B(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p1

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result p1

    invoke-virtual {v3, v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->translate(FF)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->leftTop(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    add-int/lit8 p1, p1, 0x2

    rem-int/lit8 p1, p1, 0x4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_1

    :goto_2
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->computeRectAdjustMatrix(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    return-void
.end method

.method public final B(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->shorterSize(Landroid/graphics/RectF;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    div-float/2addr v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v1, p1

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->onTranslate(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    return-void
.end method

.method public final D()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->angle_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v4, Lcom/onyx/android/sdk/universal/R$dimen;->angle_stroke_width:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v3, Lcom/onyx/android/sdk/universal/R$dimen;->angle_text_size:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->setRadius(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->setArcPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->setTextPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->setRadius(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->setArcPaint(Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->setTextPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getSelectionPointType()Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getCreateAttr()Lcom/onyx/android/sdk/genericshape/CreateAttr;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/CreateAttr;->getSelectionPointType()Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H()V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    if-ne p1, v0, :cond_4

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getRectPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public final F()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateBySelectionPoints$default(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;ZILjava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H()V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I()V

    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    return-void
.end method

.method public final I()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y:F

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeWidth(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;-><init>()V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->boundRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    iget-object v8, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->getRealtimeVelocity()[F

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->consumeStickyDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;[F)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, p2

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result p1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result p1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v0, :cond_0

    const-string p0, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.universal.UniversalShape"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->J:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphShapeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->ensureShapeUniqueId()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->loadJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;->setFeatureCollection(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->x(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateShapeRect()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getLineStyleType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setLineStyle(I)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "createUniversalShape"

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result p1

    invoke-virtual {v2, v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->translate(FF)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;->provide(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p1, v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;->onDrag(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F()V

    return-void
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->B:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->clearGuideLine()V

    return-void
.end method

.method public final clearGuideLine()V
    .locals 1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->clear()V

    return-void
.end method

.method public final convertTouchPointFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final convertTouchPointFromRenderToPage(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchPointInRender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final correctShapeByGuideLine()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    new-instance v1, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setShape(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setTransformAction(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v5, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    filled-new-array {v3, v4, v5}, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    filled-new-array {v3, v4}, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setTransformPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->setRenderMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->configureShapeCorrectionArgs(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;->create(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;->correct(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I()V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/genericshape/Polygon;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->D()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Polygon;->getCoordinates()[[[F

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {p1}, Lcom/onyx/android/sdk/genericshape/GeoJsonKt;->toTouchPoints([[[F)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->concatTransform(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result p1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p3

    mul-float v4, p1, p3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E:Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v()Z

    move-result v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;FZ)V

    return-void
.end method

.method public final drawAngles(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->shouldDrawAngle(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    const-string v2, "angle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/android/sdk/genericshape/Polygon;

    if-eqz v4, :cond_7

    check-cast v3, Lcom/onyx/android/sdk/genericshape/Polygon;

    invoke-virtual {p0, v3, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d(Lcom/onyx/android/sdk/genericshape/Polygon;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public final drawExtraShapeContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;->draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v0

    mul-float v6, v1, v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iget-object v8, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->drawGuideLines(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;Ljava/util/List;FLcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V

    return-void
.end method

.method public final drawRotationHandle(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isWaitingEdit()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->D:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;->drawRotationHandle(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final drawSelectionPoints(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p:F

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p:F

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w:Landroid/graphics/Paint;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->D()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->concatTransform(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p2

    mul-float v4, v0, p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->F:Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v()Z

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;FZ)V

    return-void
.end method

.method public final f()I
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-ne v5, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$findHitTestSelectionIndex$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$findHitTestSelectionIndex$3;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final g()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 7

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g:Landroid/graphics/Matrix;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->findRotationPoint$default(Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getBoxMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getFeatureCollectionStr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->z:Ljava/lang/String;

    return-object p0
.end method

.method public final getFeatureMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->A:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getGuidelines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getReferenceShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->B:Ljava/util/List;

    return-object p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-object p0
.end method

.method public final getShapeRectFWithWidth()Landroid/graphics/RectF;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, v7

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->expandShapeRectWithWidth$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Landroid/graphics/Matrix;FILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v7
.end method

.method public final getShapeRectInPage()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyAndTransform(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeRectInRender()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)F
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorDataProxy()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;->getAdaptiveStrokeWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)F

    move-result p0

    return p0
.end method

.method public final hitTestByPriority(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {v3, v5, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->shorterSize(Landroid/graphics/RectF;)F

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/universal/R$dimen;->small_shape_rect_size:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p:F

    invoke-virtual {p0, p1, v3, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointSize()F

    move-result v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual {p0, p1, v3, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->q:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->q:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_7
    if-nez p2, :cond_8

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :cond_8
    return v1
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/TouchPoint;)I
    .locals 9

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v5, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    invoke-virtual {v5, v6, v3, v7, v8}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointDistance(FFFF)F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_1

    cmpg-float v5, v3, v2

    if-gez v5, :cond_2

    :cond_1
    move v0, v1

    move v2, v3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final isAddMode()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDragAction()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEditMode()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->EDIT:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isScaleAction()Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUndefinedMode()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUndefinedTransformAction()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->isUndefined()Z

    move-result p0

    return p0
.end method

.method public final isWaitingEdit()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->EDIT:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Landroid/graphics/Matrix;
    .locals 5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->isCurveSerialShape(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    div-float/2addr v2, v1

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;->getShapeAspectRatio(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, v2, v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->isLineSerialShape(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v3, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    neg-float v1, v2

    invoke-virtual {v3, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    filled-new-array {v1, p0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateBySelectionPoints(Ljava/util/List;Z)V

    return-object v0

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v3, p1, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_6
    :goto_1
    return-object v0
.end method

.method public final k()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    sget-object v1, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getCreateAttr()Lcom/onyx/android/sdk/genericshape/CreateAttr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/CreateAttr;->getSelectionPointIndex()I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/CreateAttr;->getSelectionPointIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i(Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getExtraBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;->getFeatureCollection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->z:Ljava/lang/String;

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->A:Landroid/graphics/Matrix;

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;->extract(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorKt;->allocId(Ljava/util/List;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :goto_0
    return-object p0
.end method

.method public final onInterceptTouchDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->UNDEFINED:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->hitTestByPriority(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    move-result p0

    return p0
.end method

.method public final onShapeDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->convertTouchPointFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->saveFirstPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->start()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->hitTestByPriority(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    :goto_0
    return-void
.end method

.method public final onShapeEdit(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "universalShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upTouchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateUniversalShapeType()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->convertTouchPointFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->saveFirstPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->start()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->EDIT:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i(Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p3, :cond_0

    sget-object p3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    new-instance p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result p2

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p3

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    return-void
.end method

.method public final onShapeMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->detect(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->z(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->A(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :goto_0
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G:Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;->updateTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final onShapeUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->e:Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->stop()V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->correctShapeByGuideLine()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->EDIT:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    return-void
.end method

.method public final onThemeUpdated()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->w:Landroid/graphics/Paint;

    sget-object v0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->d:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onDown(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/universal/R$dimen;->shape_region_hit_test_radius:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->hitTestPathRegion(Ljava/util/List;FZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :cond_1
    return p1
.end method

.method public final r(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v0

    float-to-double v2, p2

    cmpg-double p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    new-instance p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p3, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-array p3, v0, [Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    aput-object v0, p3, v1

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->concatTransform([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :cond_1
    return p2
.end method

.method public final setBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setBoxMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setGuidelines(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->c:Ljava/util/List;

    return-void
.end method

.method public final setReferenceShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->B:Ljava/util/List;

    return-void
.end method

.method public final setShape(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-void
.end method

.method public final setTransformAction(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/base/data/TouchPoint;FZ)Z
    .locals 11

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-virtual {v2, v4, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v6, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v6, v5, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v5

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v9, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v9, v8, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    if-lez v10, :cond_3

    move-object v4, v7

    move-wide v5, v8

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_0
    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v2, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v2, v4, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v5

    float-to-double p1, p2

    cmpg-double p1, v5, p1

    if-gez p1, :cond_4

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    if-nez p3, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k:I

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :cond_5
    return v1

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->C:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method

.method public final updateShapeAttr(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->b:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isWidthChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y:F

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isLineStyleTypeChanged()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getLineStyleType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setLineStyle(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isColorChanged()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeColor(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabledChanged()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->enableFillColor(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorChanged()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getFillColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setFillColor(I)V

    :cond_5
    return-void
.end method

.method public final updateVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->g:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final v()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isWaitingEdit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isDragAction()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final w(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->h(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->enableFillColor(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->v:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeColor(I)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeWidth(F)V

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->y:F

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$initAttr$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->updateFillColorIfNotValid(Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public final x(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->k()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->m:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->j(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "wave_line"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    aget-object p2, p2, v0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/Properties;->getWaveAttr()Lcom/onyx/android/sdk/genericshape/WaveAttr;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyLength()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyLength(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->getWavyPeak()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyPeak(F)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->u:Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getLineStyleType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setLineStyle(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->o()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->i:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final z(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->isStickyState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->r:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->I:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->H:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->G()V

    return-void
.end method
