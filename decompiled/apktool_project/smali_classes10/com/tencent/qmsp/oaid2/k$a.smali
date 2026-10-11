.class public Lcom/tencent/qmsp/oaid2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/oaid2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/tencent/qmsp/oaid2/k;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/k;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/k$a;->b:Lcom/tencent/qmsp/oaid2/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/k$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/k$a;->b:Lcom/tencent/qmsp/oaid2/k;

    iget-object v0, v0, Lcom/tencent/qmsp/oaid2/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/k$a;->a:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
