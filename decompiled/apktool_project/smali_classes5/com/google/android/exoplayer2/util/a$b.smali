.class public final Lcom/google/android/exoplayer2/util/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/google/android/exoplayer2/util/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/a$b;->a:Landroid/os/Message;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/a$b;->b:Lcom/google/android/exoplayer2/util/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->a(Lcom/google/android/exoplayer2/util/a$b;)V

    return-void
.end method

.method public b(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/a$b;->a:Landroid/os/Message;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/a$b;->a()V

    return p1
.end method

.method public c(Landroid/os/Message;Lcom/google/android/exoplayer2/util/a;)Lcom/google/android/exoplayer2/util/a$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/a$b;->a:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/a$b;->b:Lcom/google/android/exoplayer2/util/a;

    return-object p0
.end method

.method public getTarget()Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/a$b;->b:Lcom/google/android/exoplayer2/util/a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method public sendToTarget()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/a$b;->a:Landroid/os/Message;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/a$b;->a()V

    return-void
.end method
