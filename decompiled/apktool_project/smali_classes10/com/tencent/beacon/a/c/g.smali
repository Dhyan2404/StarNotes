.class Lcom/tencent/beacon/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/c/j;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "QimeiWrapper"

    const-string v0, "init onQimeiDispatch : qimei is %s"

    invoke-static {p1, v0, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    new-instance p1, Lcom/tencent/beacon/a/a/c;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/tencent/beacon/a/a/c;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method
