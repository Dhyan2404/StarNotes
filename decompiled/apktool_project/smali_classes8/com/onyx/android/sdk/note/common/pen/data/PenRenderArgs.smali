.class public final Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0015J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001eR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010!\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R$\u0010\u000e\u001a\u00020\r2\u0006\u0010!\u001a\u00020\r8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R$\u0010\u0010\u001a\u00020\r2\u0006\u0010!\u001a\u00020\r8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00080\u0010-\u001a\u0004\u00081\u0010/R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R$\u0010\u001c\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00198\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00198\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008<\u00109\u001a\u0004\u0008=\u0010;R$\u0010@\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001e8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;",
        "",
        "Landroid/graphics/Canvas;",
        "canvas",
        "setCanvas",
        "Landroid/graphics/Paint;",
        "paint",
        "setPaint",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getPoints",
        "points",
        "setPoints",
        "",
        "penType",
        "setPenType",
        "color",
        "setColor",
        "",
        "strokeWidth",
        "setStrokeWidth",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "getCreateArgs",
        "createArgs",
        "setCreateArgs",
        "Landroid/graphics/Matrix;",
        "screenMatrix",
        "setScreenMatrix",
        "renderMatrix",
        "setRenderMatrix",
        "",
        "erase",
        "setErase",
        "<set-?>",
        "a",
        "Landroid/graphics/Canvas;",
        "getCanvas",
        "()Landroid/graphics/Canvas;",
        "b",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "c",
        "Ljava/util/List;",
        "d",
        "I",
        "getPenType",
        "()I",
        "e",
        "getColor",
        "f",
        "F",
        "getStrokeWidth",
        "()F",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "h",
        "Landroid/graphics/Matrix;",
        "getRenderMatrix",
        "()Landroid/graphics/Matrix;",
        "i",
        "getScreenMatrix",
        "j",
        "Z",
        "isErase",
        "()Z",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
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

.field public d:I

.field public e:I

.field public f:F

.field public g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->c:Ljava/util/List;

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

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->h:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->i:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final getCanvas()Landroid/graphics/Canvas;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->e:I

    return p0
.end method

.method public final getCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPenType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->d:I

    return p0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getRenderMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getScreenMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->i:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->f:F

    return p0
.end method

.method public final isErase()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->j:Z

    return p0
.end method

.method public final setCanvas(Landroid/graphics/Canvas;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public final setColor(I)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->e:I

    return-object p0
.end method

.method public final setCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "createArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->g:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public final setErase(Z)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->j:Z

    return-object p0
.end method

.method public final setPaint(Landroid/graphics/Paint;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final setPenType(I)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->d:I

    return-object p0
.end method

.method public final setPoints(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->c:Ljava/util/List;

    return-object p0
.end method

.method public final setRenderMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->h:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setScreenMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "screenMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->i:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setStrokeWidth(F)Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/pen/data/PenRenderArgs;->f:F

    return-object p0
.end method
