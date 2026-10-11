.class public Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/media/MonitoredActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/media/MonitoredActivity$a;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    iget-object v1, v0, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/media/MonitoredActivity;->removeLifeCycleListener(Lcom/onegravity/rteditor/media/MonitoredActivity$LifeCycleListener;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity$a$a;->e:Lcom/onegravity/rteditor/media/MonitoredActivity$a;

    invoke-static {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity$a;->a(Lcom/onegravity/rteditor/media/MonitoredActivity$a;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
