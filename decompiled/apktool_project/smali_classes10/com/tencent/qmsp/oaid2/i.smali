.class public Lcom/tencent/qmsp/oaid2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Lcom/tencent/qmsp/oaid2/f;

.field public d:Lcom/tencent/qmsp/oaid2/g;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qmsp/oaid2/i;->a:Z

    new-instance v0, Lcom/tencent/qmsp/oaid2/i$a;

    invoke-direct {v0, p0}, Lcom/tencent/qmsp/oaid2/i$a;-><init>(Lcom/tencent/qmsp/oaid2/i;)V

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/i;->e:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/i;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qmsp/oaid2/i;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/i;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qmsp/oaid2/i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/i;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/i;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "HSDID start to unbind did service"

    .line 3
    invoke-static {v0}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/qmsp/oaid2/i;->a:Z

    .line 5
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/i;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/i;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSDID error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/qmsp/oaid2/g;)V
    .locals 3

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/i;->d:Lcom/tencent/qmsp/oaid2/g;

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.msa.SupplementaryDID"

    const-string v2, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "HSDID start to bind did service"

    .line 12
    invoke-static {p1}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/i;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/i;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/qmsp/oaid2/i;->a:Z

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/i;->d:Lcom/tencent/qmsp/oaid2/g;

    invoke-interface {p1}, Lcom/tencent/qmsp/oaid2/g;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/i;->a(Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/i;->d:Lcom/tencent/qmsp/oaid2/g;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/i;->c:Lcom/tencent/qmsp/oaid2/f;

    invoke-interface {p1, p0}, Lcom/tencent/qmsp/oaid2/g;->a(Lcom/tencent/qmsp/oaid2/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HSDID notify did bind status error :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/i;->d:Lcom/tencent/qmsp/oaid2/g;

    invoke-interface {p0}, Lcom/tencent/qmsp/oaid2/g;->b()V

    :goto_0
    return-void
.end method
