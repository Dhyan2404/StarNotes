.class public Lcom/miui/penengine/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/penengine/a/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/miui/penengine/a/b;


# direct methods
.method public constructor <init>(Lcom/miui/penengine/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    invoke-static {p2}, Lcom/miui/penengine/g/a$b;->a(Landroid/os/IBinder;)Lcom/miui/penengine/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/penengine/a/b;->a(Lcom/miui/penengine/a/b;Lcom/miui/penengine/g/a;)Lcom/miui/penengine/g/a;

    :try_start_0
    iget-object p1, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    iget-object p1, p1, Lcom/miui/penengine/a/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Service connected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    iget-object p0, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MI-PencilManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    invoke-static {p1}, Lcom/miui/penengine/a/b;->a(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/g/a;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/miui/penengine/a/b$a;->a:Lcom/miui/penengine/a/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    const-string p0, "MI-PencilManager"

    const-string p1, "Service disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
