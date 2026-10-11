.class public Lcom/blankj/utilcode/util/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/a;->u(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/blankj/utilcode/util/a;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/a$b;->f:Lcom/blankj/utilcode/util/a;

    iput-object p2, p0, Lcom/blankj/utilcode/util/a$b;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/a$b;->f:Lcom/blankj/utilcode/util/a;

    invoke-static {v0}, Lcom/blankj/utilcode/util/a;->b(Lcom/blankj/utilcode/util/a;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/blankj/utilcode/util/a$b;->e:Landroid/app/Activity;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
