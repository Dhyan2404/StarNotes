.class public abstract Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;
    .locals 1

    .line 5
    sget-object v0, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a$a;->a:Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.ipemanager.sdk.ISdkAidlInterface"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a$a;

    invoke-direct {v0, p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oplus.ipemanager.sdk.ISdkAidlInterface"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->stopFeedBackVibration()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->startFeedBackVibration()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->unsetISdkAidlCallback(Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->isFunctionVibrationEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->isDemoModeEnable()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getSupportFeatures()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getSuportSdkVersion()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->startVibration(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setVibrationType(I)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getPencilConnectState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->getVibrationSwitchState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;->setISdkAidlCallback(Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;)V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
