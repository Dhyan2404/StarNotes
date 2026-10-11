.class final Lcom/oplus/ocs/base/common/api/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/internal/ClientSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/OplusApi;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/l;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/OplusApi;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l$2;->b:Lcom/oplus/ocs/base/common/api/l;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/l$2;->a:Lcom/oplus/ocs/base/common/api/OplusApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l$2;->a:Lcom/oplus/ocs/base/common/api/OplusApi;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/OplusApi;->checkAuthResult(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    :cond_0
    return-void
.end method
