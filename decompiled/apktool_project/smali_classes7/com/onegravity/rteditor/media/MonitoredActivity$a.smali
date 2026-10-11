.class public Lcom/onegravity/rteditor/media/MonitoredActivity$a;
.super Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/media/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleAdapter;",
        "Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/ProgressDialog;

.field public final b:Ljava/lang/Runnable;

.field public final c:Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/onegravity/rteditor/media/MonitoredActivity;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;Landroid/app/ProgressDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob<",
            "TT;>;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    invoke-direct {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    .line 3
    iput-object p3, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a:Landroid/app/ProgressDialog;

    .line 4
    iput-object p2, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->c:Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->b:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;->addLifeCycleListener(Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 1

    .line 7
    iput-object p1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    invoke-direct {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 8
    new-instance v0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    .line 9
    iput-object p3, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a:Landroid/app/ProgressDialog;

    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->c:Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;

    .line 11
    iput-object p2, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->b:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p1, p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;->addLifeCycleListener(Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iget-object v0, v0, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iget-object v1, v1, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iget-object p1, p1, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public runForegroundJob()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->c:Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;

    invoke-interface {v0}, Lcom/onegravity/rteditor/media/MonitoredActivity$ForegroundJob;->runForegroundJob()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iget-object v1, v1, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iget-object v1, v1, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
