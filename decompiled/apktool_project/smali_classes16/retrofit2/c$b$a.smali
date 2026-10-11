.class public Lretrofit2/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/c$b;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lretrofit2/Callback;

.field public final synthetic b:Lretrofit2/c$b;


# direct methods
.method public constructor <init>(Lretrofit2/c$b;Lretrofit2/Callback;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iput-object p2, p0, Lretrofit2/c$b$a;->a:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iget-object p1, p1, Lretrofit2/c$b;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/c$b$a$b;

    invoke-direct {v0, p0, p2}, Lretrofit2/c$b$a$b;-><init>(Lretrofit2/c$b$a;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iget-object p1, p1, Lretrofit2/c$b;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/c$b$a$a;

    invoke-direct {v0, p0, p2}, Lretrofit2/c$b$a$a;-><init>(Lretrofit2/c$b$a;Lretrofit2/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
