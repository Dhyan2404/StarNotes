.class public Lcom/miui/penengine/a/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:Ljava/lang/String; = "color"

.field public static final f:Ljava/lang/String; = "color_space"


# instance fields
.field public final synthetic a:Lcom/miui/penengine/a/b;


# direct methods
.method public constructor <init>(Lcom/miui/penengine/a/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MI-PencilManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.touchservice"

    const-string v4, "com.xiaomi.touchservice.pencilengine.PencilEngineManagerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-static {v0}, Lcom/miui/penengine/a/b;->i(Lcom/miui/penengine/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    iget-object p0, p0, Lcom/miui/penengine/a/b;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reconnect service, is bound service = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-static {v0}, Lcom/miui/penengine/a/b;->g(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/e/a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    iget-object p0, p0, Lcom/miui/penengine/a/b;->i:Lcom/miui/penengine/e/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/penengine/e/a;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-static {p1}, Lcom/miui/penengine/a/b;->a(Lcom/miui/penengine/a/b;)Lcom/miui/penengine/g/a;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    iget-object v0, p1, Lcom/miui/penengine/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p1, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    iget-object p1, p1, Lcom/miui/penengine/a/b;->l:Lcom/miui/penengine/a/b$c;

    invoke-interface {v3, p1, v0}, Lcom/miui/penengine/g/a;->a(Lcom/miui/penengine/g/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/miui/penengine/a/b;->h:Lcom/miui/penengine/g/a;

    iget-object p1, p1, Lcom/miui/penengine/a/b;->l:Lcom/miui/penengine/a/b$c;

    invoke-interface {v0, p1}, Lcom/miui/penengine/g/a;->a(Lcom/miui/penengine/g/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Fail to register listener, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    iget-boolean v0, p1, Lcom/miui/penengine/a/b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1, v1}, Lcom/miui/penengine/a/b;->a(Lcom/miui/penengine/a/b;Z)Z

    iget-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-virtual {p1, v2}, Lcom/miui/penengine/a/b;->a(Z)I

    :cond_5
    iget-object p1, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    iget-boolean v0, p1, Lcom/miui/penengine/a/b;->f:Z

    if-eqz v0, :cond_6

    invoke-static {p1, v1}, Lcom/miui/penengine/a/b;->b(Lcom/miui/penengine/a/b;Z)Z

    iget-object p0, p0, Lcom/miui/penengine/a/b$b;->a:Lcom/miui/penengine/a/b;

    invoke-virtual {p0, v2}, Lcom/miui/penengine/a/b;->b(Z)I

    :cond_6
    :goto_1
    return-void
.end method
