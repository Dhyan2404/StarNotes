.class public interface abstract Lcom/vivo/bluetoothpen/OnPenBatteryListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/bluetoothpen/OnPenBatteryListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBatteryChange(Landroid/bluetooth/BluetoothDevice;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
