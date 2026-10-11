.class public Lcom/samsung/android/sdk/penremote/SpenRemote$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/penremote/SpenRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/samsung/android/sdk/penremote/SpenRemote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/penremote/SpenRemote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SM_SDK"

    const-string v0, "SpenRemoteService : Connected!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p2}, Lcom/samsung/android/sdk/penremote/ISPenRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->b(Lcom/samsung/android/sdk/penremote/SpenRemote;Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    invoke-static {}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c()Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->a(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->d(Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->c(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p2}, Lcom/samsung/android/sdk/penremote/SpenRemote;->c(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;->onSuccess(Lcom/samsung/android/sdk/penremote/SpenUnitManager;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->d(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->c(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {p0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->c(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;

    move-result-object p0

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionResultCallback;->onFailure(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->b(Lcom/samsung/android/sdk/penremote/SpenRemote;Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    invoke-static {}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c()Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->d(Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)V

    const-string p1, "SM_SDK"

    const-string v0, "SpenRemoteService : Disconnected!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$a;->e:Lcom/samsung/android/sdk/penremote/SpenRemote;

    const/4 p1, -0x2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenRemote;->d(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V

    return-void
.end method
