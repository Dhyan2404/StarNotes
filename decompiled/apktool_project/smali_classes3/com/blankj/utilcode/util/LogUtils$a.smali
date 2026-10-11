.class public final Lcom/blankj/utilcode/util/LogUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/blankj/utilcode/util/LogUtils$f;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/blankj/utilcode/util/LogUtils$f;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$a;->e:I

    iput-object p2, p0, Lcom/blankj/utilcode/util/LogUtils$a;->f:Lcom/blankj/utilcode/util/LogUtils$f;

    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$a;->e:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$a;->f:Lcom/blankj/utilcode/util/LogUtils$f;

    iget-object v1, v1, Lcom/blankj/utilcode/util/LogUtils$f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/blankj/utilcode/util/LogUtils$a;->f:Lcom/blankj/utilcode/util/LogUtils$f;

    iget-object v3, v3, Lcom/blankj/utilcode/util/LogUtils$f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$a;->g:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->h(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
