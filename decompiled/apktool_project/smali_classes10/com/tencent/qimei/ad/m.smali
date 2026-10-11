.class public Lcom/tencent/qimei/ad/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/ad/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ad/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ad/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ad/m;->a:Lcom/tencent/qimei/ad/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qimei/ad/m;->a:Lcom/tencent/qimei/ad/n;

    invoke-static {p0}, Lcom/tencent/qimei/ad/n;->a(Lcom/tencent/qimei/ad/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
