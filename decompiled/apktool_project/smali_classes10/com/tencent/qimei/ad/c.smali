.class public Lcom/tencent/qimei/ad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/ad/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ad/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ad/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ad/c;->a:Lcom/tencent/qimei/ad/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/ad/c;->a:Lcom/tencent/qimei/ad/e;

    invoke-static {p0}, Lcom/tencent/qimei/ad/e;->b(Lcom/tencent/qimei/ad/e;)V

    const/4 p0, 0x0

    return p0
.end method
