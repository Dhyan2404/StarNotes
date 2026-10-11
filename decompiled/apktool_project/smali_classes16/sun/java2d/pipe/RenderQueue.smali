.class public abstract Lsun/java2d/pipe/RenderQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x7d00


# instance fields
.field protected buf:Lsun/java2d/pipe/RenderBuffer;

.field protected refSet:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/java2d/pipe/RenderQueue;->refSet:Ljava/util/Set;

    const/16 v0, 0x7d00

    invoke-static {v0}, Lsun/java2d/pipe/RenderBuffer;->allocate(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    return-void
.end method


# virtual methods
.method public final addReference(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/RenderQueue;->refSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ensureAlignment(I)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    and-int/lit8 p1, v0, 0x7

    if-eqz p1, :cond_0

    iget-object p0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 p1, 0x5a

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    :cond_0
    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    :cond_0
    return-void
.end method

.method public final ensureCapacityAndAlignment(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual {p0, p2}, Lsun/java2d/pipe/RenderQueue;->ensureAlignment(I)V

    return-void
.end method

.method public abstract flushAndInvokeNow(Ljava/lang/Runnable;)V
.end method

.method public abstract flushNow()V
.end method

.method public flushNow(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->position(J)V

    .line 2
    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    return-void
.end method

.method public final getBuffer()Lsun/java2d/pipe/RenderBuffer;
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/RenderQueue;->buf:Lsun/java2d/pipe/RenderBuffer;

    return-object p0
.end method

.method public final lock()V
    .locals 0

    return-void
.end method

.method public final tryLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final unlock()V
    .locals 0

    return-void
.end method
