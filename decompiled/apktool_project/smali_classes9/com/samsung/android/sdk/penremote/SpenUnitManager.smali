.class public Lcom/samsung/android/sdk/penremote/SpenUnitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/penremote/SpenUnitManager$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "SM_SDK"


# instance fields
.field public a:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

.field public b:Lcom/samsung/android/sdk/penremote/SpenUnit;

.field public c:Lcom/samsung/android/sdk/penremote/SpenUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/penremote/SpenUnitManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;-><init>()V

    return-void
.end method

.method public static c()Lcom/samsung/android/sdk/penremote/SpenUnitManager;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/penremote/SpenUnitManager$b;->a()Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/sdk/penremote/SpenUnit;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenUnit;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->a:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/penremote/SpenUnit;-><init>(ILcom/samsung/android/sdk/penremote/ISPenRemoteService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    return-object p0
.end method

.method public final b()Lcom/samsung/android/sdk/penremote/SpenUnit;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b:Lcom/samsung/android/sdk/penremote/SpenUnit;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenUnit;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->a:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/penremote/SpenUnit;-><init>(ILcom/samsung/android/sdk/penremote/ISPenRemoteService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b:Lcom/samsung/android/sdk/penremote/SpenUnit;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b:Lcom/samsung/android/sdk/penremote/SpenUnit;

    return-object p0
.end method

.method public d(Lcom/samsung/android/sdk/penremote/ISPenRemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->a:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b:Lcom/samsung/android/sdk/penremote/SpenUnit;

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b:Lcom/samsung/android/sdk/penremote/SpenUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/penremote/SpenUnit;->b()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenUnit;->b()V

    :cond_1
    return-void
.end method

.method public getUnit(I)Lcom/samsung/android/sdk/penremote/SpenUnit;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->a:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SM_SDK"

    const-string p1, "Not connected. connect() is not Called first."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->b()Lcom/samsung/android/sdk/penremote/SpenUnit;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;->a()Lcom/samsung/android/sdk/penremote/SpenUnit;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public registerSpenEventListener(Lcom/samsung/android/sdk/penremote/SpenEventListener;Lcom/samsung/android/sdk/penremote/SpenUnit;)V
    .locals 0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/penremote/SpenUnit;->c(Lcom/samsung/android/sdk/penremote/SpenEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SM_SDK"

    const-string p1, "RemoteException : unable to set SpenEventListener!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterSpenEventListener(Lcom/samsung/android/sdk/penremote/SpenUnit;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/penremote/SpenUnit;->b()V

    return-void
.end method
