.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u0007\n\u0002\u0008B\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008V\u0010WR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\u001cR\"\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0018\u001a\u0004\u0008\'\u0010\u001a\"\u0004\u0008(\u0010\u001cR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R$\u00101\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0004\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\"\u00105\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0018\u001a\u0004\u00083\u0010\u001a\"\u0004\u00084\u0010\u001cR\"\u00109\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0018\u001a\u0004\u00087\u0010\u001a\"\u0004\u00088\u0010\u001cR\"\u0010=\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0018\u001a\u0004\u0008;\u0010\u001a\"\u0004\u0008<\u0010\u001cR\"\u0010A\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010\u0018\u001a\u0004\u0008?\u0010\u001a\"\u0004\u0008@\u0010\u001cR\"\u0010E\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010\u0018\u001a\u0004\u0008C\u0010\u001a\"\u0004\u0008D\u0010\u001cR\"\u0010I\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u0018\u001a\u0004\u0008G\u0010\u001a\"\u0004\u0008H\u0010\u001cR\"\u0010M\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u0018\u001a\u0004\u0008K\u0010\u001a\"\u0004\u0008L\u0010\u001cR$\u0010Q\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010\u0004\u001a\u0004\u0008O\u0010\u0006\"\u0004\u0008P\u0010\u0008R$\u0010U\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010\u0004\u001a\u0004\u0008S\u0010\u0006\"\u0004\u0008T\u0010\u0008\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "id",
        "b",
        "getType",
        "setType",
        "type",
        "c",
        "getKind",
        "setKind",
        "kind",
        "d",
        "getRange",
        "setRange",
        "range",
        "",
        "e",
        "F",
        "getX1",
        "()F",
        "setX1",
        "(F)V",
        "x1",
        "f",
        "getY1",
        "setY1",
        "y1",
        "g",
        "getX2",
        "setX2",
        "x2",
        "h",
        "getY2",
        "setY2",
        "y2",
        "i",
        "getP1Decoration",
        "setP1Decoration",
        "p1Decoration",
        "j",
        "getP2Decoration",
        "setP2Decoration",
        "p2Decoration",
        "k",
        "getCx",
        "setCx",
        "cx",
        "l",
        "getCy",
        "setCy",
        "cy",
        "m",
        "getRx",
        "setRx",
        "rx",
        "n",
        "getRy",
        "setRy",
        "ry",
        "o",
        "getPhi",
        "setPhi",
        "phi",
        "p",
        "getStartAngle",
        "setStartAngle",
        "startAngle",
        "q",
        "getSweepAngle",
        "setSweepAngle",
        "sweepAngle",
        "r",
        "getStartDecoration",
        "setStartDecoration",
        "startDecoration",
        "s",
        "getEndDecoration",
        "setEndDecoration",
        "endDecoration",
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

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCx()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->k:F

    return p0
.end method

.method public final getCy()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->l:F

    return p0
.end method

.method public final getEndDecoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getP1Decoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getP2Decoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhi()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->o:F

    return p0
.end method

.method public final getRange()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getRx()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->m:F

    return p0
.end method

.method public final getRy()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->n:F

    return p0
.end method

.method public final getStartAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->p:F

    return p0
.end method

.method public final getStartDecoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final getSweepAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->q:F

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getX1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->e:F

    return p0
.end method

.method public final getX2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->g:F

    return p0
.end method

.method public final getY1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->f:F

    return p0
.end method

.method public final getY2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->h:F

    return p0
.end method

.method public final setCx(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->k:F

    return-void
.end method

.method public final setCy(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->l:F

    return-void
.end method

.method public final setEndDecoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->s:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->a:Ljava/lang/String;

    return-void
.end method

.method public final setKind(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->c:Ljava/lang/String;

    return-void
.end method

.method public final setP1Decoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->i:Ljava/lang/String;

    return-void
.end method

.method public final setP2Decoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->j:Ljava/lang/String;

    return-void
.end method

.method public final setPhi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->o:F

    return-void
.end method

.method public final setRange(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->d:Ljava/lang/String;

    return-void
.end method

.method public final setRx(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->m:F

    return-void
.end method

.method public final setRy(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->n:F

    return-void
.end method

.method public final setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->p:F

    return-void
.end method

.method public final setStartDecoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->r:Ljava/lang/String;

    return-void
.end method

.method public final setSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->q:F

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->b:Ljava/lang/String;

    return-void
.end method

.method public final setX1(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->e:F

    return-void
.end method

.method public final setX2(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->g:F

    return-void
.end method

.method public final setY1(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->f:F

    return-void
.end method

.method public final setY2(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;->h:F

    return-void
.end method
