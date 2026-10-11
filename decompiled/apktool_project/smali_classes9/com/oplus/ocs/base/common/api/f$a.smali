.class final Lcom/oplus/ocs/base/common/api/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/f;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/f$a;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/f;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/f$a;-><init>(Lcom/oplus/ocs/base/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/f$a;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/f;->b(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/common/api/InternalClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f$a;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/f;->b(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/common/api/InternalClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/api/InternalClient;->serviceUnbind()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/f$a;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/f;->c(Lcom/oplus/ocs/base/common/api/f;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f$a;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/f;->d(Lcom/oplus/ocs/base/common/api/f;)Landroid/content/ServiceConnection;

    return-void
.end method
