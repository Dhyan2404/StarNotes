.class public interface abstract Lcom/samsung/android/sdk/penremote/ISPenRemoteService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/penremote/ISPenRemoteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerSpenEventListener(ILcom/samsung/android/sdk/penremote/ISpenEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSpenEventListener(ILcom/samsung/android/sdk/penremote/ISpenEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
