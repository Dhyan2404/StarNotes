.class public final Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPencilManagerClient(Landroid/content/Context;)Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;->initialize(Landroid/content/Context;)Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;

    move-result-object p0

    return-object p0
.end method
