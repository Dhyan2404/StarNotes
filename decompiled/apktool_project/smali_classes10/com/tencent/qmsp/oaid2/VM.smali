.class public Lcom/tencent/qmsp/oaid2/VM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVendorInfo(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)I
    .locals 1

    new-instance v0, Lcom/tencent/qmsp/oaid2/VendorManager;

    invoke-direct {v0}, Lcom/tencent/qmsp/oaid2/VendorManager;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qmsp/oaid2/VendorManager;->getVendorInfo(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)I

    move-result p0

    return p0
.end method
