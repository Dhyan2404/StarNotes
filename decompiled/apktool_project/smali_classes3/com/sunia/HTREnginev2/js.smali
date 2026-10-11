.class public final Lcom/sunia/HTREnginev2/js;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/js$a;,
        Lcom/sunia/HTREnginev2/js$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final n:Lcom/sunia/HTREnginev2/js$a;

.field public static final o:J = 0x20L

.field public static final p:J = 0x28L

.field public static final q:I = 0x4

.field public static final r:J


# instance fields
.field public final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public final g:Lcom/sunia/HTREnginev2/m5l;

.field public final h:Lcom/sunia/HTREnginev2/js$a;

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/os/Handler;

.field public k:J

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/js$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/js$a;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/js;->n:Lcom/sunia/HTREnginev2/js$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/js;->r:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/sunia/HTREnginev2/m5l;)V
    .locals 6

    .line 1
    sget-object v4, Lcom/sunia/HTREnginev2/js;->n:Lcom/sunia/HTREnginev2/js$a;

    new-instance v5, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/js;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/sunia/HTREnginev2/m5l;Lcom/sunia/HTREnginev2/js$a;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/sunia/HTREnginev2/m5l;Lcom/sunia/HTREnginev2/js$a;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/js;->i:Ljava/util/Set;

    const-wide/16 v0, 0x28

    .line 6
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/js;->k:J

    .line 7
    iput-object p1, p0, Lcom/sunia/HTREnginev2/js;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 8
    iput-object p2, p0, Lcom/sunia/HTREnginev2/js;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 9
    iput-object p3, p0, Lcom/sunia/HTREnginev2/js;->g:Lcom/sunia/HTREnginev2/m5l;

    .line 10
    iput-object p4, p0, Lcom/sunia/HTREnginev2/js;->h:Lcom/sunia/HTREnginev2/js$a;

    .line 11
    iput-object p5, p0, Lcom/sunia/HTREnginev2/js;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/js;->h:Lcom/sunia/HTREnginev2/js$a;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/js$a;->a()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/js;->g:Lcom/sunia/HTREnginev2/m5l;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/m5l;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/js;->e(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/js;->g:Lcom/sunia/HTREnginev2/m5l;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/m5l;->c()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/js;->i:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/js;->i:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sunia/HTREnginev2/js;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->b()I

    move-result v5

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->d()I

    move-result v3

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/js;->c()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    new-instance v5, Lcom/sunia/HTREnginev2/js$b;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/js$b;-><init>()V

    iget-object v6, p0, Lcom/sunia/HTREnginev2/js;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v7, p0, Lcom/sunia/HTREnginev2/js;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sunia/HTREnginev2/js;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v3, 0x3

    const-string v5, "PreFillRunner"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->d()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/js;->l:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/js;->g:Lcom/sunia/HTREnginev2/m5l;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m5l;->b()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/js;->l:Z

    return-void
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/js;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/js;->f:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 6

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/js;->k:J

    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    sget-wide v4, Lcom/sunia/HTREnginev2/js;->r:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/js;->k:J

    return-wide v0
.end method

.method public final e(J)Z
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/js;->h:Lcom/sunia/HTREnginev2/js$a;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/js$a;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x20

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/js;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/js;->j:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/js;->d()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
