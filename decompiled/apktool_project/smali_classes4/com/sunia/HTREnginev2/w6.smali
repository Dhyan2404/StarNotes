.class public final Lcom/sunia/HTREnginev2/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public e:Landroid/app/Activity;

.field public f:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hjq/window/EasyWindow;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w6;->f:Lcom/hjq/window/EasyWindow;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w6;->f:Lcom/hjq/window/EasyWindow;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->recycle()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w6;->f:Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w6;->e:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/w6;->f:Lcom/hjq/window/EasyWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/w6;->f:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
