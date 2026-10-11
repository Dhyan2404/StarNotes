.class Lcom/tencent/beacon/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/c/c;->a(Lcom/tencent/beacon/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/beacon/a/d/a;

.field final synthetic c:Lcom/tencent/beacon/c/c;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/c/c;Ljava/lang/String;Lcom/tencent/beacon/a/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/c/b;->c:Lcom/tencent/beacon/c/c;

    iput-object p2, p0, Lcom/tencent/beacon/c/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/c/b;->b:Lcom/tencent/beacon/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/tencent/beacon/base/net/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/c/b;->c:Lcom/tencent/beacon/c/c;

    invoke-static {v0}, Lcom/tencent/beacon/c/c;->a(Lcom/tencent/beacon/c/c;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/beacon/c/b;->c:Lcom/tencent/beacon/c/c;

    invoke-static {v1}, Lcom/tencent/beacon/c/c;->b(Lcom/tencent/beacon/c/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[event] rqd_heartbeat A85=Y report success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/c/b;->b:Lcom/tencent/beacon/a/d/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/beacon/c/b;->a:Ljava/lang/String;

    const-string v2, "active_user_date"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p0, Lcom/tencent/beacon/c/b;->a:Ljava/lang/String;

    const-string v1, "HEART_DENGTA"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
