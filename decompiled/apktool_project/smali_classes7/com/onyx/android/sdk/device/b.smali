.class public final synthetic Lcom/onyx/android/sdk/device/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/device/OppoDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/device/OppoDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/device/b;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/oplus/ocs/base/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/device/b;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/device/OppoDevice$initStylusVibrate$3;->a(Lcom/onyx/android/sdk/device/OppoDevice;Lcom/oplus/ocs/base/common/ConnectionResult;)V

    return-void
.end method
