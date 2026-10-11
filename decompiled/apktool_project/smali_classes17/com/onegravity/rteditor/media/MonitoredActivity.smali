.class public Lcom/onegravity/rteditor/media/MonitoredActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;,
        Lcom/onegravity/rteditor/media/MonitoredActivity$a;,
        Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;,
        Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleAdapter;
    }
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field public final w0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffffc

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;

    invoke-interface {v1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;

    invoke-interface {v1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;

    invoke-interface {v1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;

    invoke-interface {v1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;

    invoke-interface {v1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->w0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startBackgroundJob(ILjava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    new-instance v0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->b()V

    return-void
.end method

.method public startForegroundJob(ILcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    new-instance v0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->runForegroundJob()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
