.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClientBuilder;
.super Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PMClientBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/Api$Client;
    .locals 0

    const-string p0, "PMClientBuilder"

    const-string p3, "buildClient"

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClient;

    invoke-direct {p0, p1, p2}, Lcom/oplus/ocs/ipemanager/sdk/PencilManagerClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method
