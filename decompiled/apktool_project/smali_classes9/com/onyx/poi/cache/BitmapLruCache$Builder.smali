.class public Lcom/onyx/poi/cache/BitmapLruCache$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/poi/cache/BitmapLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final f:I = 0x100000

.field public static final g:F = 0.25f

.field public static final h:F = 0.75f

.field public static final i:I = 0x64

.field public static final j:I = 0x1e


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:J

.field public e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->a:Z

    const/high16 v0, 0x1e00000

    iput v0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->b:I

    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->d:J

    return-void
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->e:Ljava/io/File;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public build()Lcom/onyx/poi/cache/BitmapLruCache;
    .locals 5

    new-instance v0, Lcom/onyx/poi/cache/BitmapLruCache;

    invoke-direct {v0}, Lcom/onyx/poi/cache/BitmapLruCache;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    iget v2, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->b:I

    invoke-direct {v1, v2}, Lcom/onyx/poi/cache/BitmapMemoryLruCache;-><init>(I)V

    invoke-static {v0, v1}, Lcom/onyx/poi/cache/BitmapLruCache;->f(Lcom/onyx/poi/cache/BitmapLruCache;Lcom/onyx/poi/cache/BitmapMemoryLruCache;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->e:Ljava/io/File;

    iget-wide v2, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->d:J

    const/4 p0, 0x4

    const/4 v4, 0x1

    invoke-static {v1, p0, v4, v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/poi/cache/BitmapLruCache;->j(Lcom/onyx/poi/cache/BitmapLruCache;Lcom/jakewharton/disklrucache/DiskLruCache;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->a:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDiskCacheEnabled(Z)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->c:Z

    return-object p0
.end method

.method public setDiskCacheLocation(Ljava/io/File;)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 0

    iput-object p1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->e:Ljava/io/File;

    return-object p0
.end method

.method public setDiskCacheMaxSize(J)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->d:J

    return-object p0
.end method

.method public setMemoryCacheEnabled(Z)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->a:Z

    return-object p0
.end method

.method public setMemoryCacheMaxSize(I)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->b:I

    return-object p0
.end method

.method public setMemoryCacheMaxSizeUsingHeapSize()Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->setMemoryCacheMaxSizeUsingHeapSize(F)Lcom/onyx/poi/cache/BitmapLruCache$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMemoryCacheMaxSizeUsingHeapSize(F)Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    .locals 2

    .line 2
    invoke-static {}, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->a()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache$Builder;->setMemoryCacheMaxSize(I)Lcom/onyx/poi/cache/BitmapLruCache$Builder;

    move-result-object p0

    return-object p0
.end method
