.class public final Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u00084\u0018\u0000 \u0096\u00012\u00020\u0001:\u0002\u0096\u0001B\t\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0013J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0017J\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001bJ\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u001fJ\u0006\u0010#\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001fJ\u0006\u0010\'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020&J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010,\u001a\u00020&J\u000f\u0010.\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008.\u0010/J\u000e\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020&J\u000f\u00102\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u00082\u0010/J\u0008\u00104\u001a\u000203H\u0007J\u0008\u00106\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00002\u0008\u00107\u001a\u0004\u0018\u000103J\u0010\u0010:\u001a\u00020\u00002\u0008\u00109\u001a\u0004\u0018\u000103J\u0008\u0010;\u001a\u0004\u0018\u000103J\u0008\u0010<\u001a\u0004\u0018\u000103J\u0006\u0010=\u001a\u00020&J\u0008\u0010>\u001a\u0004\u0018\u00010\u0002J\u0010\u0010@\u001a\u00020\u00002\u0008\u0010?\u001a\u0004\u0018\u00010\u0002J\u0008\u0010A\u001a\u0004\u0018\u00010\u0002J\u0010\u0010C\u001a\u00020\u00002\u0008\u0010B\u001a\u0004\u0018\u00010\u0002J\u0008\u0010D\u001a\u0004\u0018\u00010\u0002J\u0010\u0010F\u001a\u00020\u00002\u0008\u0010E\u001a\u0004\u0018\u00010\u0002J\u0008\u0010G\u001a\u0004\u0018\u00010\u0002J\u0010\u0010I\u001a\u00020\u00002\u0008\u0010H\u001a\u0004\u0018\u00010\u0002J\u0008\u0010J\u001a\u0004\u0018\u00010\u0002J\u0008\u0010K\u001a\u0004\u0018\u00010\u0002J\u0008\u0010L\u001a\u0004\u0018\u00010\u0002J\u0010\u0010O\u001a\u00020\u00002\u0008\u0010N\u001a\u0004\u0018\u00010MJ\u0008\u0010P\u001a\u0004\u0018\u00010MJ\u0006\u0010Q\u001a\u00020\u001fJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u001fJ\u0006\u0010T\u001a\u00020\u001fJ\u000e\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u001fJ\u0008\u0010X\u001a\u0004\u0018\u00010WJ\u0010\u0010Z\u001a\u00020\u00002\u0008\u0010Y\u001a\u0004\u0018\u00010WJ\u0006\u0010[\u001a\u00020&J\u000e\u0010[\u001a\u00020&2\u0006\u0010\\\u001a\u00020&J\u0006\u0010]\u001a\u00020&J\u000e\u0010]\u001a\u00020&2\u0006\u0010\\\u001a\u00020&J\u0006\u0010_\u001a\u00020^J\u001c\u0010d\u001a\u00020c2\u0014\u0010b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`J\u0014\u0010e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`J\u000e\u0010g\u001a\u00020c2\u0006\u0010f\u001a\u00020^J\u0006\u0010h\u001a\u00020^R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010jR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010jR\u0016\u0010\u000e\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010jR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0018\u0010Y\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010yR\u0016\u0010*\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0018\u0010\u007f\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u0019\u00109\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010~R\u0019\u0010?\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010jR\u0019\u0010B\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010jR\u0019\u0010E\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010jR\u0019\u0010H\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010jR\u001a\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0017\u0010R\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010yR\u0017\u0010U\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010yR\'\u0010\u008b\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u008d\u0001R\u0019\u0010\u0093\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "",
        "",
        "getShapeUniqueId",
        "shapeUniqueId",
        "setShapeUniqueId",
        "getDocumentUniqueId",
        "documentUniqueId",
        "setDocumentUniqueId",
        "getPageUniqueId",
        "pageUniqueId",
        "setPageUniqueId",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPointList",
        "pointList",
        "setPointList",
        "getLayerId",
        "layerId",
        "setLayerId",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "getShapeCreateArgs",
        "shapeCreateArgs",
        "setShapeCreateArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "getTextStyle",
        "textStyle",
        "setTextStyle",
        "Landroid/graphics/RectF;",
        "getBounds",
        "bounds",
        "setBounds",
        "",
        "getStrokeColor",
        "strokeColor",
        "setStrokeColor",
        "getFillColor",
        "fillColor",
        "setFillColor",
        "",
        "getStrokeWidth",
        "getRenderStrokeWidth",
        "getRenderScale",
        "strokeWidth",
        "setStrokeWidth",
        "scale",
        "setBitmapScale",
        "getBitmapScale",
        "()Ljava/lang/Float;",
        "expand",
        "setBitmapRectExpand",
        "getBitmapRectExpand",
        "Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "getMatrixValues",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "values",
        "setMatrixValues",
        "renderMatrixValues",
        "setRenderMatrixValues",
        "getRenderMatrixValues",
        "getShapeMatrixValues",
        "getShapeMatrixAverageScale",
        "getExtraAttr",
        "extraAttr",
        "setExtraAttr",
        "getText",
        "text",
        "setText",
        "getEditText",
        "editText",
        "setEditText",
        "getRichText",
        "richText",
        "setRichText",
        "getRenderText",
        "getResourceLocalPath",
        "getResourceId",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "resource",
        "setResource",
        "getResource",
        "getShapeType",
        "shapeType",
        "setShapeType",
        "getShapeStatus",
        "shapeStatus",
        "setShapeStatus",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "getShapeLineStyle",
        "shapeLineStyle",
        "setShapeLineStyle",
        "getWavyLength",
        "value",
        "getWavyPeak",
        "",
        "isEnabled",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "map",
        "",
        "setLinkModelMap",
        "getLinkModelMap",
        "show",
        "setShowExcerptIndicator",
        "isShowExcerptIndicator",
        "a",
        "Ljava/lang/String;",
        "b",
        "c",
        "d",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "e",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "i",
        "Landroid/graphics/RectF;",
        "j",
        "I",
        "k",
        "l",
        "F",
        "m",
        "Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "matrixValues",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "t",
        "u",
        "v",
        "Ljava/util/Map;",
        "linkModelMap",
        "w",
        "Ljava/lang/Float;",
        "bitmapScale",
        "x",
        "bitmapRectExpand",
        "y",
        "Z",
        "showExcerptIndicator",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:F

.field public m:Lcom/onyx/android/sdk/base/data/MatrixValues;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/base/data/MatrixValues;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:I

.field public u:I

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->d:Lcom/onyx/android/sdk/base/data/TouchPointList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->y:Z

    return-void
.end method

.method public static final synthetic access$getShapeStatus$p(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->u:I

    return p0
.end method


# virtual methods
.method public final getBitmapRectExpand()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public final getBitmapScale()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->w:Ljava/lang/Float;

    return-object p0
.end method

.method public final getBounds()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getDocumentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraAttr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->k:I

    return p0
.end method

.method public final getLayerId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkModelMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->v:Ljava/util/Map;

    return-object p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->m:Lcom/onyx/android/sdk/base/data/MatrixValues;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->n:Lcom/onyx/android/sdk/base/data/MatrixValues;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public final getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p0

    return-object p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->d:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final getRenderMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->n:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-object p0
.end method

.method public final getRenderScale()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->n:Lcom/onyx/android/sdk/base/data/MatrixValues;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/MatrixValues;->getValues()[F

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixMinScale([F)F

    move-result p0

    return p0
.end method

.method public final getRenderStrokeWidth()F
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->l:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRenderScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeMatrixAverageScale()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getRenderText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->p:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getResource()Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->s:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    return-object p0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->s:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getResourceLocalPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->s:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getRichText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7fff

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->h:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    return-object p0
.end method

.method public final getShapeMatrixAverageScale()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->m:Lcom/onyx/android/sdk/base/data/MatrixValues;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public final getShapeMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->m:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-object p0
.end method

.method public final getShapeStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->u:I

    return p0
.end method

.method public final getShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->t:I

    return p0
.end method

.method public final getShapeUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->j:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->l:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public final getWavyLength()F
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getWavyLength(F)F

    move-result p0

    return p0
.end method

.method public final getWavyLength(F)F
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getCreateScaleValue(F)F

    move-result p0

    return p0
.end method

.method public final getWavyPeak()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getWavyPeak(F)F

    move-result p0

    return p0
.end method

.method public final getWavyPeak(F)F
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getCreateScaleValue(F)F

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isShowExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->y:Z

    return p0
.end method

.method public final setBitmapRectExpand(F)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public final setBitmapScale(F)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->w:Ljava/lang/Float;

    return-object p0
.end method

.method public final setBounds(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setDocumentUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setEditText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final setExtraAttr(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final setFillColor(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->k:I

    return-object p0
.end method

.method public final setLayerId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setLinkModelMap(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->v:Ljava/util/Map;

    return-void
.end method

.method public final setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->m:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-object p0
.end method

.method public final setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->d:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final setRenderMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->n:Lcom/onyx/android/sdk/base/data/MatrixValues;

    return-object p0
.end method

.method public final setResource(Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->s:Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    return-object p0
.end method

.method public final setRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public final setShapeLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->h:Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    return-object p0
.end method

.method public final setShapeStatus(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->u:I

    return-object p0
.end method

.method public final setShapeType(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->t:I

    return-object p0
.end method

.method public final setShapeUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setShowExcerptIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->y:Z

    return-void
.end method

.method public final setStrokeColor(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->j:I

    return-object p0
.end method

.method public final setStrokeWidth(F)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->l:F

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method
