.class public interface abstract Lcom/samsung/android/sdk/penremote/ISpenEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/penremote/ISpenEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Lcom/samsung/android/sdk/penremote/SpenEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
