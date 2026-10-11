.class public Lcom/blankj/utilcode/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/a;->d(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

.field public final synthetic g:Lcom/blankj/utilcode/util/a;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/a;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/a$a;->g:Lcom/blankj/utilcode/util/a;

    iput-object p2, p0, Lcom/blankj/utilcode/util/a$a;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/blankj/utilcode/util/a$a;->f:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/a$a;->g:Lcom/blankj/utilcode/util/a;

    iget-object v1, p0, Lcom/blankj/utilcode/util/a$a;->e:Landroid/app/Activity;

    iget-object p0, p0, Lcom/blankj/utilcode/util/a$a;->f:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-static {v0, v1, p0}, Lcom/blankj/utilcode/util/a;->a(Lcom/blankj/utilcode/util/a;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method
