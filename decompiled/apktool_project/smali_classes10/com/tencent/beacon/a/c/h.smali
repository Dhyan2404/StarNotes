.class Lcom/tencent/beacon/a/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/log/IObservableLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/c/j;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/util/BeaconLogger;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/util/BeaconLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/c/h;->a:Lcom/tencent/beacon/base/util/BeaconLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/beacon/a/c/h;->a:Lcom/tencent/beacon/base/util/BeaconLogger;

    const-string v0, "qimei"

    invoke-interface {p0, v0, p1}, Lcom/tencent/beacon/base/util/BeaconLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
