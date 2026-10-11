.class final Lcom/oplus/ocs/base/common/api/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/g;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$1;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$1;->a:Lcom/oplus/ocs/base/common/api/g;

    new-instance v8, Lcom/oplus/ocs/base/common/api/InternalClient;

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/ocs/base/common/api/g;->e:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-instance v7, Lcom/oplus/ocs/base/common/api/g$2;

    invoke-direct {v7, p0}, Lcom/oplus/ocs/base/common/api/g$2;-><init>(Lcom/oplus/ocs/base/common/api/g;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/ocs/base/common/api/InternalClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZLcom/oplus/ocs/base/IAuthenticationListener;)V

    invoke-virtual {v8}, Lcom/oplus/ocs/base/common/api/InternalClient;->connect()Z

    return-void
.end method
