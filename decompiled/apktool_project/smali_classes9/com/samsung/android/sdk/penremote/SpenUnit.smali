.class public Lcom/samsung/android/sdk/penremote/SpenUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_AIR_MOTION:I = 0x1

.field public static final TYPE_BUTTON:I = 0x0

.field public static final e:Ljava/lang/String; = "SM_SDK"


# instance fields
.field public a:Lcom/samsung/android/sdk/penremote/SpenEventListener;

.field public b:I

.field public c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

.field public d:Lcom/samsung/android/sdk/penremote/ISpenEventListener;


# direct methods
.method public constructor <init>(ILcom/samsung/android/sdk/penremote/ISPenRemoteService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->b:I

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenUnit$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/penremote/SpenUnit$a;-><init>(Lcom/samsung/android/sdk/penremote/SpenUnit;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->d:Lcom/samsung/android/sdk/penremote/ISpenEventListener;

    iput p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->b:I

    iput-object p2, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/penremote/SpenUnit;)Lcom/samsung/android/sdk/penremote/SpenEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->a:Lcom/samsung/android/sdk/penremote/SpenEventListener;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->a:Lcom/samsung/android/sdk/penremote/SpenEventListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->d:Lcom/samsung/android/sdk/penremote/ISpenEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    iget p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->b:I

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/sdk/penremote/ISPenRemoteService;->unregisterSpenEventListener(ILcom/samsung/android/sdk/penremote/ISpenEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(Lcom/samsung/android/sdk/penremote/SpenEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->c:Lcom/samsung/android/sdk/penremote/ISPenRemoteService;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->a:Lcom/samsung/android/sdk/penremote/SpenEventListener;

    iget p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->b:I

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit;->d:Lcom/samsung/android/sdk/penremote/ISpenEventListener;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/sdk/penremote/ISPenRemoteService;->registerSpenEventListener(ILcom/samsung/android/sdk/penremote/ISpenEventListener;)V

    return-void

    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "SpenRemote is not connected."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
