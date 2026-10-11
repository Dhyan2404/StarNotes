.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRDiagramConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,521:1\n1#2:522\n1940#3,14:523\n2310#3,14:537\n1855#3,2:551\n*S KotlinDebug\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n*L\n236#1:523,14\n237#1:537,14\n278#1:551,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010U\u001a\u00020T\u0012\u0006\u0010<\u001a\u000209\u0012\u0006\u0010@\u001a\u00020=\u00a2\u0006\u0004\u0008V\u0010WJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010!\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\'\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0008H\u0002J\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0*H\u0002J\u0008\u0010.\u001a\u00020\u0006H\u0002J\u0010\u00102\u001a\u0002012\u0006\u00100\u001a\u00020/H\u0002J\u0010\u00103\u001a\u0002012\u0006\u00100\u001a\u00020/H\u0002J\u000e\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000004H\u0014J\u000e\u00108\u001a\u00020\u00082\u0006\u00107\u001a\u000206R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u0002060E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010J\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010IR\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010OR\u0016\u0010S\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010R\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "S",
        "candidate",
        "m",
        "",
        "l",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "v",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "shapeArgs",
        "x",
        "I",
        "C",
        "P",
        "z",
        "N",
        "B",
        "K",
        "G",
        "w",
        "D",
        "J",
        "O",
        "F",
        "L",
        "y",
        "A",
        "M",
        "H",
        "n",
        "o",
        "p",
        "u",
        "q",
        "E",
        "r",
        "t",
        "s",
        "universalShape",
        "T",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "U",
        "V",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "noteDrawingArgs",
        "",
        "Q",
        "R",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "universalShapeType",
        "createUniversalShape",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;",
        "convertContext",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "i",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "hwrInput",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "j",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "",
        "k",
        "[Ljava/lang/String;",
        "supportTypes",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;",
        "selectionPointsUpdater",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
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
        "SMAP\nHWRDiagramConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,521:1\n1#2:522\n1940#3,14:523\n2310#3,14:537\n1855#3,2:551\n*S KotlinDebug\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n*L\n236#1:523,14\n237#1:537,14\n278#1:551,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final n:Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 28
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "editorBundle"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "convertContext"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hwrInput"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    iput-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    const-string v2, "Line"

    const-string v3, "Triangle"

    const-string v4, "Right-Triangle"

    const-string v5, "Isosceles-Triangle"

    const-string v6, "Regular-Triangle"

    const-string v7, "Pentagon"

    const-string v8, "Hexagon"

    const-string v9, "Octagon"

    const-string v10, "Curve"

    const-string v11, "Wave-Line"

    const-string v12, "Square"

    const-string v13, "Rectangle"

    const-string v14, "Rhombus"

    const-string v15, "Parallelogram"

    const-string v16, "Trapezoid"

    const-string v17, "Isosceles-Trapezoid"

    const-string v18, "Right-Trapezoid"

    const-string v19, "Ellipse"

    const-string v20, "Circle"

    const-string v21, "Arrow"

    const-string v22, "Curvy-Arrow"

    const-string v23, "Bi-Arrow"

    const-string v24, "Bi-Curvy-Arrow"

    const-string v25, "Angle"

    const-string v26, "Pentagram"

    const-string v27, "Curly-Bracket"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->k:[Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n:Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;

    return-void
.end method

.method public static final synthetic access$afterConvert(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->l()V

    return-void
.end method

.method public static final synthetic access$convert(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSupportType(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->S()Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setVirtualPageBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "isosceles_trapezoid"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n:Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;->update(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final B(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "isosceles_triangle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final C(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "line"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final D(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "octagon"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final E(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "oval"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final F(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "parallelogram"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n:Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;->update(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final G(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "pentagon"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final H(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "star"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final I(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 5

    const-string v0, "polyline"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->U(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getCreateAttr()Lcom/onyx/android/sdk/genericshape/CreateAttr;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->DRAG:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/genericshape/CreateAttr;->setSelectionPointType(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V

    :goto_2
    const/4 p1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, p1, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateBySelectionPoints$default(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;ZILjava/lang/Object;)V

    return-object v0
.end method

.method public final J(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 5

    const-string v0, "rectangle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getTop()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getBottom()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    filled-new-array {v1, v2}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final K(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "regular_triangle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final L(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "rhombus"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final M(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "right_trapezoid"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n:Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;->update(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final N(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "right_triangle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final O(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 5

    const-string v0, "square"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getTop()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getBottom()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    filled-new-array {v1, v2}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final P(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 5

    const-string v0, "wave_line"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateBySelectionPoints$default(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;ZILjava/lang/Object;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    :cond_0
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;

    move-result-object p0

    if-eqz p0, :cond_1

    aget-object p0, p0, v2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/genericshape/WaveAttr;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/WaveAttr;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getCycle()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyLength(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPeak()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/WaveAttr;->setWavyPeak(F)V

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/genericshape/Properties;->setWaveAttr(Lcom/onyx/android/sdk/genericshape/WaveAttr;)V

    :goto_0
    return-object v0
.end method

.method public final Q(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getEditorDataProxy()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeWidth()F

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;->getAdaptiveStrokeWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)F

    move-result p0

    return p0
.end method

.method public final R(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphConvertWithPressure()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentShapeType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPressurePenType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getAveragePressure()F

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const p1, 0x3a83126f    # 0.001f

    invoke-static {p0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    return p0
.end method

.method public final S()Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getCandidates()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->k:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$getSupportType$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$getSupportType$2;

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    return-object p0
.end method

.method public final T(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphShapeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->Q(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->R(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeWidth(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeColor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeColor(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->enableFillColor(Z)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$initAttr$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$initAttr$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->updateFillColorIfNotValid(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setFillColor(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getLineStyleType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setLineStyle(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentShapeType()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1

    const/16 p0, 0x16

    const/16 v1, 0x2e

    if-eq v2, p0, :cond_0

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->supportStraightCorner(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    invoke-static {p1, v4}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_3

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurDarkTheme(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setFillColor(I)V

    :cond_4
    return-void
.end method

.method public final U(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->removeConvertContext(J)Z

    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "universalShapeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->loadJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;->setFeatureCollection(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->T(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V

    return-object v0
.end method

.method public final l()V
    .locals 12

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getRecognizeState()Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->IGNORED:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;

    const-string v2, "ignored, abort after covert"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->V()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->l:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->V()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->SUCCESS:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    const-string v1, "universal_shape_drawing_provider"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeShapeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v2, v3, v3, v5, v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toDownTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->getTouchPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, v3, v3, v5, v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toUpTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v3, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v11}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/TouchData;ZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeArgs()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "Circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->r(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "Regular-Triangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->K(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "Triangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->z(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "Isosceles-Trapezoid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->A(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "Parallelogram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->F(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "Bi-Curvy-Arrow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->q(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "Pentagon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->G(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "Curly-Bracket"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->s(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "Isosceles-Triangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->B(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "Curve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->t(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "Arrow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->o(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "Angle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "Octagon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->D(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->E(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "Line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->C(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "Right-Triangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->N(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "Pentagram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->H(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "Curvy-Arrow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->u(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "Wave-Line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->P(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "Bi-Arrow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1

    :cond_15
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->p(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_14
    const-string v2, "Rectangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1

    :cond_16
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->J(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_15
    const-string v2, "Trapezoid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1

    :cond_17
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->y(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_16
    const-string v2, "Rhombus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1

    :cond_18
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->L(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_17
    const-string v2, "Right-Trapezoid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1

    :cond_19
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->M(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_18
    const-string v2, "Square"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->O(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :sswitch_19
    const-string v2, "Hexagon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->w(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->v()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->setStrokeWidth(F)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->l:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6c1d3200 -> :sswitch_19
        -0x6beebac3 -> :sswitch_18
        -0x5b758cc9 -> :sswitch_17
        -0x5679c8b4 -> :sswitch_16
        -0x4721f638 -> :sswitch_15
        -0x45b832b1 -> :sswitch_14
        -0x34f088fd -> :sswitch_13
        -0x2f5539b8 -> :sswitch_12
        -0x28eacd81 -> :sswitch_11
        -0x285f8b83 -> :sswitch_10
        -0x1f666527 -> :sswitch_f
        0x242414 -> :sswitch_e
        0x7cb3be -> :sswitch_d
        0x28c5d85 -> :sswitch_c
        0x3c788b3 -> :sswitch_b
        0x3c983e9 -> :sswitch_a
        0x3e710cf -> :sswitch_9
        0xf80ba0b -> :sswitch_8
        0xfa53a68 -> :sswitch_7
        0x1778c9a0 -> :sswitch_6
        0x403aea19 -> :sswitch_5
        0x4e38697f -> :sswitch_4
        0x52873a45 -> :sswitch_3
        0x5d206e28 -> :sswitch_2
        0x75dde559 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final n(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "angle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final o(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "direction_line"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final p(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "bidirectional_line"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final q(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 9

    const-string v0, "bidirectional_curvy_arrow"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BezierUtils;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v4, v6, v8}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getHalfPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final r(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "circle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByRect(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "bracket"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final t(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 9

    const-string v0, "curve"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BezierUtils;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v4, v6, v8}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getHalfPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final u(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 9

    const-string v0, "curvy_arrow"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BezierUtils;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v4, v6, v8}, Lcom/onyx/android/sdk/geometry/utils/BezierUtils;->getHalfPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final v()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "no fitted shape found, use fallback shape instead"

    invoke-virtual {v0, v1, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->i:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->preHandleInputPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/service/predictor/impl/FeatureVerification;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/FeatureVerification;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->input(Ljava/util/List;)Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->isClosurePath()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;->findMinimumBoundingRect(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRealPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->area(Ljava/util/List;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->area(Ljava/util/List;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getRectanglePolygonSimilarThreshold()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/RectangleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/RectangleArgsExtractor;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/RectangleArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->J(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/PolygonArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PolygonArgsExtractor;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/PolygonArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->hasThreePoints()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/TriangleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/TriangleArgsExtractor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/TriangleArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->z(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->x(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/PolylineArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PolylineArgsExtractor;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/PolylineArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getPolylinePointSpacing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->filterBySpacing(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->hasTwoPoints()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->C(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->hasThreePoints()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v4, v5, v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-array v5, v8, [Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    aput-object v3, v5, v2

    aput-object v4, v5, v6

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    move-object v9, v7

    check-cast v9, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v9

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-gez v12, :cond_6

    move-object v7, v10

    move v9, v11

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    :goto_0
    check-cast v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-array v5, v8, [Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    aput-object v3, v5, v2

    aput-object v4, v5, v6

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v5

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-lez v11, :cond_9

    move-object v4, v9

    move v5, v10

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    :goto_1
    check-cast v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v3

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v5

    div-float/2addr v5, v3

    sget-object v9, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleFallbackSideRatio()F

    move-result v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_a

    sget-object v0, Lcom/onyx/android/sdk/geometry/extractor/AngleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/AngleArgsExtractor;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/extractor/AngleArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->n(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v9}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowFallbackMinimumLength()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_b

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->C(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    if-ne v1, v3, :cond_c

    move v1, v6

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_d

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    filled-new-array {v3, v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/extractor/ArrowArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->o(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_10
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getPolylineToWaveLineThreshold()I

    move-result v3

    if-lt v2, v3, :cond_11

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->checkWaveLineFeature(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;->extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->P(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->I(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "hexagon"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final x(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "polygon"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final y(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "trapezoid"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final z(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 2

    const-string v0, "triangle"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->createUniversalShape(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;->m:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;->createTransformMatrixByPoints(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method
