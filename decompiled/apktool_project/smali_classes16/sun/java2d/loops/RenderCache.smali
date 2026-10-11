.class public final Lsun/java2d/loops/RenderCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/RenderCache$Entry;
    }
.end annotation


# instance fields
.field private entries:[Lsun/java2d/loops/RenderCache$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lsun/java2d/loops/RenderCache$Entry;

    iput-object p1, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lsun/java2d/loops/RenderCache$Entry;->matches(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, v0, -0x4

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    add-int/lit8 p2, v1, 0x1

    sub-int p3, v0, v1

    invoke-static {p1, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    aput-object v2, p1, v0

    :cond_1
    invoke-virtual {v2}, Lsun/java2d/loops/RenderCache$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v6, Lsun/java2d/loops/RenderCache$Entry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/RenderCache$Entry;-><init>(Lsun/java2d/loops/RenderCache;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V

    iget-object p1, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 p4, 0x0

    invoke-static {p1, p3, p1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lsun/java2d/loops/RenderCache;->entries:[Lsun/java2d/loops/RenderCache$Entry;

    aput-object v6, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
