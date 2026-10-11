.class public Lsun/java2d/SurfaceDataProxy$CountdownTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/StateTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/SurfaceDataProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountdownTracker"
.end annotation


# instance fields
.field private countdown:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/java2d/SurfaceDataProxy$CountdownTracker;->countdown:I

    return-void
.end method


# virtual methods
.method public declared-synchronized isCurrent()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/java2d/SurfaceDataProxy$CountdownTracker;->countdown:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lsun/java2d/SurfaceDataProxy$CountdownTracker;->countdown:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
