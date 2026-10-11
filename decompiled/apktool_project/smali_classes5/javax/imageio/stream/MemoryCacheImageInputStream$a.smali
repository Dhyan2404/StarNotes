.class public Ljavax/imageio/stream/MemoryCacheImageInputStream$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/stream/MemoryCacheImageInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Lcom/sunia/HTREnginev2/amj;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/amj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream$a;->e:Lcom/sunia/HTREnginev2/amj;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream$a;->e:Lcom/sunia/HTREnginev2/amj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/amj;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream$a;->e:Lcom/sunia/HTREnginev2/amj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
