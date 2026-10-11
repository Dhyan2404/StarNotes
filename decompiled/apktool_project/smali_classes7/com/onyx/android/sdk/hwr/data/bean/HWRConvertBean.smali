.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008O\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\t\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0006\u0010\u0006\u001a\u00020\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016R\"\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR(\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\u001e\u0010\u0018\"\u0004\u0008\u001f\u0010\u001aR\"\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\n\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR(\u0010)\u001a\u0008\u0012\u0004\u0012\u00020%0\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0016\u001a\u0004\u0008\'\u0010\u0018\"\u0004\u0008(\u0010\u001aR$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R(\u00106\u001a\u0008\u0012\u0004\u0012\u0002020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u0016\u001a\u0004\u00084\u0010\u0018\"\u0004\u00085\u0010\u001aR(\u0010;\u001a\u0008\u0012\u0004\u0012\u0002070\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0016\u001a\u0004\u00089\u0010\u0018\"\u0004\u0008:\u0010\u001aR(\u0010@\u001a\u0008\u0012\u0004\u0012\u00020<0\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0016\u001a\u0004\u0008>\u0010\u0018\"\u0004\u0008?\u0010\u001aR(\u0010E\u001a\u0008\u0012\u0004\u0012\u00020A0\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u0016\u001a\u0004\u0008C\u0010\u0018\"\u0004\u0008D\u0010\u001aR\"\u0010M\u001a\u00020F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR(\u0010S\u001a\u0008\u0012\u0004\u0012\u00020O0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0016\u001a\u0004\u0008Q\u0010\u0018\"\u0004\u0008R\u0010\u001aR$\u0010W\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010\n\u001a\u0004\u0008U\u0010\u000c\"\u0004\u0008V\u0010\u000eR$\u0010[\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010\n\u001a\u0004\u0008Y\u0010\u000c\"\u0004\u0008Z\u0010\u000eR\"\u0010c\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\"\u0010g\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010^\u001a\u0004\u0008e\u0010`\"\u0004\u0008f\u0010bR\"\u0010k\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010^\u001a\u0004\u0008i\u0010`\"\u0004\u0008j\u0010bR\"\u0010o\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010^\u001a\u0004\u0008m\u0010`\"\u0004\u0008n\u0010bR\"\u0010s\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010^\u001a\u0004\u0008q\u0010`\"\u0004\u0008r\u0010bR\"\u0010w\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010^\u001a\u0004\u0008u\u0010`\"\u0004\u0008v\u0010bR\"\u0010h\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010^\u001a\u0004\u0008y\u0010`\"\u0004\u0008z\u0010bR\"\u0010~\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008{\u0010^\u001a\u0004\u0008|\u0010`\"\u0004\u0008}\u0010bR%\u0010\u0082\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u007f\u0010^\u001a\u0005\u0008\u0080\u0001\u0010`\"\u0005\u0008\u0081\u0001\u0010bR&\u0010\u0086\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010^\u001a\u0005\u0008\u0084\u0001\u0010`\"\u0005\u0008\u0085\u0001\u0010bR&\u0010\u008a\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0087\u0001\u0010^\u001a\u0005\u0008\u0088\u0001\u0010`\"\u0005\u0008\u0089\u0001\u0010bR&\u0010\u008e\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010^\u001a\u0005\u0008\u008c\u0001\u0010`\"\u0005\u0008\u008d\u0001\u0010bR%\u0010\u007f\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008f\u0001\u0010^\u001a\u0005\u0008\u0090\u0001\u0010`\"\u0005\u0008\u0091\u0001\u0010bR&\u0010\u0083\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0092\u0001\u0010^\u001a\u0005\u0008\u0093\u0001\u0010`\"\u0005\u0008\u0094\u0001\u0010bR&\u0010\u0098\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0095\u0001\u0010^\u001a\u0005\u0008\u0096\u0001\u0010`\"\u0005\u0008\u0097\u0001\u0010bR&\u0010\u009c\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0099\u0001\u0010^\u001a\u0005\u0008\u009a\u0001\u0010`\"\u0005\u0008\u009b\u0001\u0010bR\'\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008^\u0010\n\u001a\u0005\u0008\u009d\u0001\u0010\u000c\"\u0005\u0008\u009e\u0001\u0010\u000eR(\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a0\u0001\u0010\n\u001a\u0005\u0008\u00a1\u0001\u0010\u000c\"\u0005\u0008\u00a2\u0001\u0010\u000eR(\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0001\u0010\n\u001a\u0005\u0008\u00a5\u0001\u0010\u000c\"\u0005\u0008\u00a6\u0001\u0010\u000eR(\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a8\u0001\u0010\n\u001a\u0005\u0008\u00a9\u0001\u0010\u000c\"\u0005\u0008\u00aa\u0001\u0010\u000eR,\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\u00a8\u0006\u00b6\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "",
        "",
        "isEmpty",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;",
        "getHWRElement",
        "isMLGesture",
        "",
        "toString",
        "a",
        "Ljava/lang/String;",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "type",
        "b",
        "getKind",
        "setKind",
        "kind",
        "",
        "c",
        "Ljava/util/List;",
        "getElements",
        "()Ljava/util/List;",
        "setElements",
        "(Ljava/util/List;)V",
        "elements",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;",
        "d",
        "getExpressions",
        "setExpressions",
        "expressions",
        "e",
        "getLabel",
        "setLabel",
        "label",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "f",
        "getCandidates",
        "setCandidates",
        "candidates",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "getBoundBox",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "setBoundBox",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V",
        "boundBox",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;",
        "h",
        "getWords",
        "setWords",
        "words",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
        "i",
        "getChars",
        "setChars",
        "chars",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;",
        "j",
        "getItems",
        "setItems",
        "items",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;",
        "k",
        "getGestures",
        "setGestures",
        "gestures",
        "",
        "l",
        "[F",
        "getPoints",
        "()[F",
        "setPoints",
        "([F)V",
        "points",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "m",
        "getHwrResultPoints",
        "setHwrResultPoints",
        "hwrResultPoints",
        "n",
        "getVersion",
        "setVersion",
        "version",
        "o",
        "getId",
        "setId",
        "id",
        "",
        "p",
        "F",
        "getX1",
        "()F",
        "setX1",
        "(F)V",
        "x1",
        "q",
        "getY1",
        "setY1",
        "y1",
        "r",
        "getX2",
        "setX2",
        "x2",
        "s",
        "getY2",
        "setY2",
        "y2",
        "t",
        "getCx",
        "setCx",
        "cx",
        "u",
        "getCy",
        "setCy",
        "cy",
        "v",
        "getR",
        "setR",
        "w",
        "getRx",
        "setRx",
        "rx",
        "x",
        "getRy",
        "setRy",
        "ry",
        "y",
        "getPhi",
        "setPhi",
        "phi",
        "z",
        "getStartAngle",
        "setStartAngle",
        "startAngle",
        "A",
        "getSweepAngle",
        "setSweepAngle",
        "sweepAngle",
        "B",
        "getX",
        "setX",
        "C",
        "getY",
        "setY",
        "D",
        "getWidth",
        "setWidth",
        "width",
        "E",
        "getHeight",
        "setHeight",
        "height",
        "getStartDecoration",
        "setStartDecoration",
        "startDecoration",
        "G",
        "getEndDecoration",
        "setEndDecoration",
        "endDecoration",
        "H",
        "getP1Decoration",
        "setP1Decoration",
        "p1Decoration",
        "I",
        "getP2Decoration",
        "setP2Decoration",
        "p2Decoration",
        "Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;",
        "J",
        "Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;",
        "getResolverContext",
        "()Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;",
        "setResolverContext",
        "(Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;)V",
        "resolverContext",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public G:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public H:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public I:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public J:Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "bounding-box"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->k:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->l:[F

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBoundBox()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    return-object p0
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->f:Ljava/util/List;

    return-object p0
.end method

.method public final getChars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getCx()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->t:F

    return p0
.end method

.method public final getCy()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->u:F

    return p0
.end method

.method public final getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getEndDecoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->G:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpressions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getGestures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getHWRElement()Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;
    .locals 7
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;

    invoke-direct {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->o:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setKind(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->h:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setWords(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->i:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setChars(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->j:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setBoundBox(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->l:[F

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setPoints([F)V

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->p:F

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->q:F

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->r:F

    iget v3, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->s:F

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setLine(FFFF)V

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->t:F

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->u:F

    iget v3, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->v:F

    iget v4, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->w:F

    iget v5, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->x:F

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setCircle(FFFFF)V

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->B:F

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->C:F

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->D:F

    iget v3, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->E:F

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setRectangle(FFFF)V

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->y:F

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->z:F

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->A:F

    invoke-virtual {v6, v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setShapeAngle(FFF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->H:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->I:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v2, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;->setDecorationDesc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->E:F

    return p0
.end method

.method public final getHwrResultPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->m:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getP1Decoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->H:Ljava/lang/String;

    return-object p0
.end method

.method public final getP2Decoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->I:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhi()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->y:F

    return p0
.end method

.method public final getPoints()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->l:[F

    return-object p0
.end method

.method public final getR()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->v:F

    return p0
.end method

.method public final getResolverContext()Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->J:Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;

    return-object p0
.end method

.method public final getRx()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->w:F

    return p0
.end method

.method public final getRy()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->x:F

    return p0
.end method

.method public final getStartAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->z:F

    return p0
.end method

.method public final getStartDecoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->F:Ljava/lang/String;

    return-object p0
.end method

.method public final getSweepAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->A:F

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->D:F

    return p0
.end method

.method public final getWords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->B:F

    return p0
.end method

.method public final getX1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->p:F

    return p0
.end method

.method public final getX2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->r:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->C:F

    return p0
.end method

.method public final getY1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->q:F

    return p0
.end method

.method public final getY2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->s:F

    return p0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->h:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    return v1
.end method

.method public final isMLGesture()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/MLGesture;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bean/MLGesture;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/data/bean/MLGesture;->isMLGesture(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setBoundBox(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    return-void
.end method

.method public final setCandidates(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->f:Ljava/util/List;

    return-void
.end method

.method public final setChars(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->i:Ljava/util/List;

    return-void
.end method

.method public final setCx(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->t:F

    return-void
.end method

.method public final setCy(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->u:F

    return-void
.end method

.method public final setElements(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->c:Ljava/util/List;

    return-void
.end method

.method public final setEndDecoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->G:Ljava/lang/String;

    return-void
.end method

.method public final setExpressions(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->d:Ljava/util/List;

    return-void
.end method

.method public final setGestures(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->k:Ljava/util/List;

    return-void
.end method

.method public final setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->E:F

    return-void
.end method

.method public final setHwrResultPoints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->m:Ljava/util/List;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->o:Ljava/lang/String;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->j:Ljava/util/List;

    return-void
.end method

.method public final setKind(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->b:Ljava/lang/String;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->e:Ljava/lang/String;

    return-void
.end method

.method public final setP1Decoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->H:Ljava/lang/String;

    return-void
.end method

.method public final setP2Decoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->I:Ljava/lang/String;

    return-void
.end method

.method public final setPhi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->y:F

    return-void
.end method

.method public final setPoints([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->l:[F

    return-void
.end method

.method public final setR(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->v:F

    return-void
.end method

.method public final setResolverContext(Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->J:Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;

    return-void
.end method

.method public final setRx(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->w:F

    return-void
.end method

.method public final setRy(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->x:F

    return-void
.end method

.method public final setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->z:F

    return-void
.end method

.method public final setStartDecoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->F:Ljava/lang/String;

    return-void
.end method

.method public final setSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->A:F

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->a:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->n:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->D:F

    return-void
.end method

.method public final setWords(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->h:Ljava/util/List;

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->B:F

    return-void
.end method

.method public final setX1(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->p:F

    return-void
.end method

.method public final setX2(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->r:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->C:F

    return-void
.end method

.method public final setY1(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->q:F

    return-void
.end method

.method public final setY2(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->s:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
