.class public final Lcom/blankj/utilcode/util/NetworkUtils$h;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.CHANGE_WIFI_STATE",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->e()V

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getWifiScanResult()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->c()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->a(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;->a(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils;->f(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->d(Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;)Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$h$a;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$h$a;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$h;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->V0(Ljava/lang/Runnable;)V

    return-void
.end method
