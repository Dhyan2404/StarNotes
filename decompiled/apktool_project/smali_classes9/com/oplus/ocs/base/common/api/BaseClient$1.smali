.class final Lcom/oplus/ocs/base/common/api/BaseClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/BaseClient;->setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/BaseClient;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/BaseClient;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/BaseClient$1;->b:Lcom/oplus/ocs/base/common/api/BaseClient;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/BaseClient$1;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/BaseClient$1;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    return-void
.end method
