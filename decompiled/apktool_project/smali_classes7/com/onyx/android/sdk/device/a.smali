.class public final synthetic Lcom/onyx/android/sdk/device/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/device/OppoDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/device/OppoDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/device/a;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    return-void
.end method


# virtual methods
.method public final onConnectionSucceed()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/device/a;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p0}, Lcom/onyx/android/sdk/device/OppoDevice$initStylusVibrate$3;->b(Lcom/onyx/android/sdk/device/OppoDevice;)V

    return-void
.end method
