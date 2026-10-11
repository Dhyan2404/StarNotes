.class public final synthetic Lcom/sunia/HTREnginev2/ihk;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ihk;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    return-void
.end method


# virtual methods
.method public final onConnectionSucceed()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ihk;->a:Lcom/onyx/android/sdk/device/OppoDevice;

    invoke-static {p0}, Lcom/onyx/android/sdk/device/OppoDevice;->h(Lcom/onyx/android/sdk/device/OppoDevice;)V

    return-void
.end method
