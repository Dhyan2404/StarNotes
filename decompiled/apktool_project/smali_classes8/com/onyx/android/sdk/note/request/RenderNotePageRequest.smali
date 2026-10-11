.class public final Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,417:1\n1313#2,2:418\n344#3,3:420\n18#4,4:423\n50#4,7:427\n18#4,4:434\n50#4,7:438\n1855#5,2:445\n1855#5,2:447\n1#6:449\n*S KotlinDebug\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n*L\n73#1:418,2\n110#1:420,3\n193#1:423,4\n193#1:427,7\n245#1:434,4\n245#1:438,7\n255#1:445,2\n277#1:447,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u0000 J2\u00020\u0001:\u0001JB\u0017\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u0010<\u001a\u000206\u00a2\u0006\u0004\u0008H\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J0\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u001a\u001a\u00020\u00192\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010!\u001a\u00020 H\u0002J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001d2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010$\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\'\u001a\u00020&2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010(\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u0006H\u0002J\u0008\u0010+\u001a\u00020\u0019H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010-\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010/\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u001eH\u0002J\u0010\u00104\u001a\u00020\u000f2\u0006\u00103\u001a\u000202H\u0016J\u000e\u00105\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u001eR\"\u0010<\u001a\u0002068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u0014\u0010>\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010=R(\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR(\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010?\u001a\u0004\u0008E\u0010A\"\u0004\u0008F\u0010C\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
        "info",
        "",
        "j",
        "Landroid/graphics/Bitmap;",
        "sliceBitmap",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Landroid/graphics/RectF;",
        "dirtySliceRectFInPage",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "sliceInfo",
        "v",
        "",
        "x",
        "u",
        "s",
        "Landroid/graphics/Canvas;",
        "canvas",
        "w",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "",
        "z",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "",
        "",
        "q",
        "Landroid/graphics/Paint;",
        "f",
        "m",
        "o",
        "r",
        "l",
        "Landroid/graphics/Matrix;",
        "g",
        "p",
        "bitmap",
        "k",
        "n",
        "y",
        "h",
        "rect",
        "i",
        "msg",
        "t",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "execute",
        "log",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "getNoteRenderArgs",
        "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "setNoteRenderArgs",
        "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V",
        "noteRenderArgs",
        "Landroid/graphics/Paint;",
        "debugRectPaint",
        "Ljava/util/List;",
        "getSuccessList",
        "()Ljava/util/List;",
        "setSuccessList",
        "(Ljava/util/List;)V",
        "successList",
        "getFailList",
        "setFailList",
        "failList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRenderNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,417:1\n1313#2,2:418\n344#3,3:420\n18#4,4:423\n50#4,7:427\n18#4,4:434\n50#4,7:438\n1855#5,2:445\n1855#5,2:447\n1#6:449\n*S KotlinDebug\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n*L\n73#1:418,2\n110#1:420,3\n193#1:423,4\n193#1:427,7\n245#1:434,4\n245#1:438,7\n255#1:445,2\n277#1:447,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static k:Z

.field public static l:Z

.field public static m:Z


# instance fields
.field public g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
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
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->Companion:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteRenderArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->h:Landroid/graphics/Paint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->i:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDEBUG_BITMAP$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->k:Z

    return v0
.end method

.method public static final synthetic access$getDEBUG_DIRTY_RECT$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->m:Z

    return v0
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l:Z

    return v0
.end method

.method public static final synthetic access$getEraseColor(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->n()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDEBUG_BITMAP$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->k:Z

    return-void
.end method

.method public static final synthetic access$setDEBUG_DIRTY_RECT$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->m:Z

    return-void
.end method

.method public static final synthetic access$setDEBUG_LOG$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$execute$1;->INSTANCE:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$execute$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$execute$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$execute$2;-><init>(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->j(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()Landroid/graphics/Paint;
    .locals 0

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", displayRectF = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noteRenderArgs.dirtyPageDisplayRectF = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getDirtyPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public final getFailList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-object p0
.end method

.method public final getSuccessList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->i:Ljava/util/List;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 6

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "pageHighQuality"

    goto :goto_0

    :cond_2
    const-string p1, "pageNormal"

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "dirtyRectInSlice"

    goto :goto_1

    :cond_3
    const-string v1, "slice"

    :goto_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotePage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug bitmap, path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Z
    .locals 21

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v7

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return v9

    :cond_0
    new-instance v10, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v10}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->r()Z

    move-result v0

    const-string v12, ", sliceRectFInPage = "

    const-string v13, ", dirtySliceRectFInPage = "

    if-eqz v0, :cond_1

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isContainPageRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dirtyRect not in slice, do not render, isHighQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->t(Ljava/lang/String;)V

    return v9

    :cond_1
    invoke-virtual {v6, v7, v11}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->m(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v14

    invoke-static {v14}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "create bitmap"

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, v14}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;->create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    :cond_2
    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->j:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "render fail"

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    return v9

    :cond_3
    new-instance v4, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->f()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v4, v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v15}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updatePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v6, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getShowExcerptIndicator()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShowExcerptIndicator(Z)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterReferenceShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {v6, v8, v7}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->o(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object v1, v5

    move-object/from16 v17, v2

    move-object v2, v4

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move-object v4, v11

    move-object/from16 v20, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->v(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    return v9

    :cond_4
    move-object/from16 v1, v17

    move-object/from16 v0, v19

    invoke-virtual {v6, v1, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->z(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v6, v0, v15}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->i(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isRendering()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excepted drawing, but actual state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->t(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->q(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setVerifyIdList(Ljava/util/List;)V

    iget-object v0, v6, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->h(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render finish, fail, isValid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAbort = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", sliceType:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getType()Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", clipRect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", sliceDisplayRectF = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", bitmap.size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " * "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", noteBox.scale = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", sliceCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", lastVerifyId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->lastVerifyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isHighQuality = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", contentValid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getContentCacheSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    :cond_7
    move-object/from16 v5, v18

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", renderShapeTotal = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", successRenderCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->getTargetShapeTypeHistogramString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$eraseColor$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$eraseColor$1;-><init>(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->ifValid(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->r()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getDirtyPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getPageRectF$default(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;FILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRenderDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    iget p1, p0, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    iget p2, p0, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getRenderShapeList(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRenderDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->l(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;

    move-result-object p0

    iget p1, p0, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getDirtyPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final s(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final setFailList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->j:Ljava/util/List;

    return-void
.end method

.method public final setNoteRenderArgs(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-void
.end method

.method public final setSuccessList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->i:Ljava/util/List;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->y(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->s(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledDisplayContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->w(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final v(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSupportRenderPageContentBitmap()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->x(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->k(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->u(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "render content background fail, abort render shapeList, pageId = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", bitmap.size = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " * "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isHighQuality = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", contentValid = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getContentCacheSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isAbort = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDirtyRender = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->r()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public final w(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Landroid/graphics/RectF;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getContentCacheSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v1}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->computeRenderContentMatrix(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, v2, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "renderContentBitmap time = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p1, "render content fail, expected render content bitmap, but actual fail"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->t(Ljava/lang/String;)V

    return v1
.end method

.method public final x(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getGeoLayoutShaderWrapper()Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    div-float/2addr v2, v3

    sget-object v3, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v3}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    invoke-virtual {p1, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->p(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v0, p1, v1, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->drawVirtualPageClipRectF(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "renderContentWithGeoLayoutWrapper, deltaScale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isHighQuality = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", boxInfo.box = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->hasMargin()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    const/4 v9, 0x1

    if-nez v1, :cond_1

    move v2, v9

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object p1, v0

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->getPageMarginTemplateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;->loadFromFileOrDefault(Ljava/io/File;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setContentRect(Landroid/graphics/RectF;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->draw$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    const-string p1, "render margin finish"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    return v9
.end method

.method public final z(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            ")I"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v2

    if-eqz v2, :cond_0

    iget p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getLayerId()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getLayerId()I

    move-result v2

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getLayerId()I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isLayerVisibleById(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$renderShapes$1$1;

    invoke-direct {v2, p2, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$renderShapes$1$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/internal/Ref$IntRef;)V

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->runCatching(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method
