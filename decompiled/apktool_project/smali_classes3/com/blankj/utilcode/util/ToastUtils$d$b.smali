.class public Lcom/blankj/utilcode/util/ToastUtils$d$b;
.super Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/blankj/utilcode/util/ToastUtils$d;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->a:I

    invoke-direct {p0}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$d;->g(Lcom/blankj/utilcode/util/ToastUtils$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->a:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$d;->h(Lcom/blankj/utilcode/util/ToastUtils$d;Landroid/app/Activity;IZ)V

    :cond_0
    return-void
.end method
