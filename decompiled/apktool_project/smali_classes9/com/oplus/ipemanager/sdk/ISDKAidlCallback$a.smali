.class public abstract Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnectionChanged:I = 0x1

.field static final TRANSACTION_onDemoModeEnableChange:I = 0x4

.field static final TRANSACTION_onFunctionFeedbackStateChange:I = 0x3

.field static final TRANSACTION_onVibrationSwitchStateChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.ipemanager.sdk.ISDKAidlCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.ipemanager.sdk.ISDKAidlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;

    invoke-direct {v0, p0}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;
    .locals 1

    sget-object v0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;->a:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;)Z
    .locals 1

    sget-object v0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;->a:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback$a$a;->a:Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oplus.ipemanager.sdk.ISDKAidlCallback"

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v3, v1

    :cond_1
    invoke-interface {p0, v3}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;->onDemoModeEnableChange(Z)V

    return v1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v3, v1

    :cond_3
    invoke-interface {p0, v3}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;->onFunctionFeedbackStateChange(Z)V

    return v1

    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v3, v1

    :cond_5
    invoke-interface {p0, v3}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;->onVibrationSwitchStateChange(Z)V

    return v1

    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/ipemanager/sdk/ISDKAidlCallback;->onConnectionChanged(I)V

    return v1

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
