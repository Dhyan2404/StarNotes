.class public Lretrofit2/c$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/c$b$a;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lretrofit2/Response;

.field public final synthetic f:Lretrofit2/c$b$a;


# direct methods
.method public constructor <init>(Lretrofit2/c$b$a;Lretrofit2/Response;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/c$b$a$a;->f:Lretrofit2/c$b$a;

    iput-object p2, p0, Lretrofit2/c$b$a$a;->e:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lretrofit2/c$b$a$a;->f:Lretrofit2/c$b$a;

    iget-object v0, v0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iget-object v0, v0, Lretrofit2/c$b;->f:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lretrofit2/c$b$a$a;->f:Lretrofit2/c$b$a;

    iget-object v0, p0, Lretrofit2/c$b$a;->a:Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/c$b$a$a;->f:Lretrofit2/c$b$a;

    iget-object v1, v0, Lretrofit2/c$b$a;->a:Lretrofit2/Callback;

    iget-object v0, v0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iget-object p0, p0, Lretrofit2/c$b$a$a;->e:Lretrofit2/Response;

    invoke-interface {v1, v0, p0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    :goto_0
    return-void
.end method
