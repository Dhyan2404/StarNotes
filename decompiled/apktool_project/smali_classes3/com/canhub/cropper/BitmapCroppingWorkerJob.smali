.class public final Lcom/canhub/cropper/BitmapCroppingWorkerJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0001LB\u00ab\u0001\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010+\u001a\u00020\u001e\u0012\u0006\u0010-\u001a\u00020\u001e\u0012\u0006\u0010/\u001a\u00020\u001e\u0012\u0006\u00101\u001a\u00020\u001e\u0012\u0006\u00103\u001a\u00020&\u0012\u0006\u00105\u001a\u00020&\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:\u0012\u0006\u0010?\u001a\u00020\u001e\u0012\u0008\u0010A\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008J\u0010KJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u001b\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0014\u0010%\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010 R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010+\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010 R\u0014\u0010-\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010 R\u0014\u0010/\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010 R\u0014\u00101\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010 R\u0014\u00103\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u0010(R\u0014\u00105\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u0010(R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010?\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010 R\u0016\u0010A\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010\u0014R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010H\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "start",
        "cancel",
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;",
        "result",
        "a",
        "(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/canhub/cropper/CropImageView;",
        "f",
        "Ljava/lang/ref/WeakReference;",
        "cropImageViewReference",
        "Landroid/net/Uri;",
        "g",
        "Landroid/net/Uri;",
        "uri",
        "Landroid/graphics/Bitmap;",
        "h",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "i",
        "[F",
        "cropPoints",
        "",
        "j",
        "I",
        "degreesRotated",
        "k",
        "orgWidth",
        "l",
        "orgHeight",
        "",
        "m",
        "Z",
        "fixAspectRatio",
        "n",
        "aspectRatioX",
        "o",
        "aspectRatioY",
        "p",
        "reqWidth",
        "q",
        "reqHeight",
        "r",
        "flipHorizontally",
        "s",
        "flipVertically",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "t",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "options",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "u",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "saveCompressFormat",
        "v",
        "saveCompressQuality",
        "w",
        "customOutputUri",
        "Lkotlinx/coroutines/Job;",
        "x",
        "Lkotlinx/coroutines/Job;",
        "job",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V",
        "Result",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/CropImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroid/graphics/Bitmap$CompressFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:I

.field public final w:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/CropImageView;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            "[FIIIZIIIIZZ",
            "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "I",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    const-string v6, "context"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cropImageViewReference"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cropPoints"

    invoke-static {p5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "options"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "saveCompressFormat"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->e:Landroid/content/Context;

    iput-object v2, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->f:Ljava/lang/ref/WeakReference;

    move-object v1, p3

    iput-object v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->g:Landroid/net/Uri;

    move-object v1, p4

    iput-object v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->h:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->i:[F

    move v1, p6

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->j:I

    move v1, p7

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->k:I

    move v1, p8

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->l:I

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->m:Z

    move/from16 v1, p10

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->n:I

    move/from16 v1, p11

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->o:I

    move/from16 v1, p12

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->p:I

    move/from16 v1, p13

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->q:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->r:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->s:Z

    iput-object v4, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->t:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iput-object v5, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->u:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v1, p18

    iput v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->v:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->w:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    iput-object v1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->x:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getAspectRatioX$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->n:I

    return p0
.end method

.method public static final synthetic access$getAspectRatioY$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->o:I

    return p0
.end method

.method public static final synthetic access$getBitmap$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCropImageViewReference$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getCropPoints$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)[F
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->i:[F

    return-object p0
.end method

.method public static final synthetic access$getCustomOutputUri$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->w:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$getDegreesRotated$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->j:I

    return p0
.end method

.method public static final synthetic access$getFixAspectRatio$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->m:Z

    return p0
.end method

.method public static final synthetic access$getFlipHorizontally$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->r:Z

    return p0
.end method

.method public static final synthetic access$getFlipVertically$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->s:Z

    return p0
.end method

.method public static final synthetic access$getOptions$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->t:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public static final synthetic access$getOrgHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->l:I

    return p0
.end method

.method public static final synthetic access$getOrgWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->k:I

    return p0
.end method

.method public static final synthetic access$getReqHeight$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->q:I

    return p0
.end method

.method public static final synthetic access$getReqWidth$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->p:I

    return p0
.end method

.method public static final synthetic access$getSaveCompressFormat$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->u:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public static final synthetic access$getSaveCompressQuality$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->v:I

    return p0
.end method

.method public static final synthetic access$getUri$p(Lcom/canhub/cropper/BitmapCroppingWorkerJob;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$onPostExecute(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->a(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$onPostExecute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$onPostExecute$2;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final cancel()V
    .locals 2

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->x:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->x:Lkotlinx/coroutines/Job;

    invoke-virtual {v0, p0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final start()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->x:Lkotlinx/coroutines/Job;

    return-void
.end method
