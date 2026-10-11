.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClient;
.super Lcom/oplus/ocs/base/common/api/BaseClient;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "IPE_PENCIL_CLIENT"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/BaseClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 0

    const-string p0, "IPE_PENCIL_CLIENT"

    return-object p0
.end method
