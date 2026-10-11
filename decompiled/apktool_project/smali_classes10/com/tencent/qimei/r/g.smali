.class public Lcom/tencent/qimei/r/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/r/l;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

.field public final synthetic b:Lcom/tencent/qimei/r/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/l;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/g;->b:Lcom/tencent/qimei/r/l;

    iput-object p2, p0, Lcom/tencent/qimei/r/g;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/r/g;->b:Lcom/tencent/qimei/r/l;

    invoke-virtual {v0}, Lcom/tencent/qimei/r/l;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/tencent/qimei/r/g;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-interface {p0, v0}, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;->onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/r/g;->b:Lcom/tencent/qimei/r/l;

    iget-object p0, p0, Lcom/tencent/qimei/r/g;->a:Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    invoke-static {v0, p0}, Lcom/tencent/qimei/r/l;->a(Lcom/tencent/qimei/r/l;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void
.end method
