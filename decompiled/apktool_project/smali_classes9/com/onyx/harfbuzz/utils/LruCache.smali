.class public abstract Lcom/onyx/harfbuzz/utils/LruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/utils/LruCache$Segment;,
        Lcom/onyx/harfbuzz/utils/LruCache$a;,
        Lcom/onyx/harfbuzz/utils/LruCache$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final NODE_OVERHEAD:I = 0x28


# instance fields
.field public final a:Lcom/onyx/harfbuzz/utils/LruCache$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache$a<",
            "TK;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/utils/LruCache$a;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/utils/LruCache$a;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->a:Lcom/onyx/harfbuzz/utils/LruCache$a;

    iput p1, p0, Lcom/onyx/harfbuzz/utils/LruCache;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/onyx/harfbuzz/utils/LruCache;)Lcom/onyx/harfbuzz/utils/LruCache$a;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->a:Lcom/onyx/harfbuzz/utils/LruCache$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/harfbuzz/utils/LruCache;I)I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    return v0
.end method

.method public static synthetic c(Lcom/onyx/harfbuzz/utils/LruCache;I)I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    return v0
.end method

.method public static synthetic d(Lcom/onyx/harfbuzz/utils/LruCache;)I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->b:I

    return p0
.end method


# virtual methods
.method public final declared-synchronized capacity()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->a:Lcom/onyx/harfbuzz/utils/LruCache$a;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/utils/LruCache$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->c:I

    if-gt v0, p1, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache;->a:Lcom/onyx/harfbuzz/utils/LruCache$a;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/utils/LruCache$a;->c()Lcom/onyx/harfbuzz/utils/LruCache$b;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/harfbuzz/utils/LruCache;->a:Lcom/onyx/harfbuzz/utils/LruCache$a;

    iget-object v1, v1, Lcom/onyx/harfbuzz/utils/LruCache$a;->a:Lcom/onyx/harfbuzz/utils/LruCache$b;

    if-ne v0, v1, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget-object v1, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->a:Lcom/onyx/harfbuzz/utils/LruCache$Segment;

    iget-object v0, v0, Lcom/onyx/harfbuzz/utils/LruCache$b;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
