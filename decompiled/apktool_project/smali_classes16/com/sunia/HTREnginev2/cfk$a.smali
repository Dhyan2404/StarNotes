.class public Lcom/sunia/HTREnginev2/cfk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/cfk;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lretrofit2/Callback;

.field public final synthetic f:Lcom/sunia/HTREnginev2/cfk;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/cfk;Lretrofit2/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cfk$a;->f:Lcom/sunia/HTREnginev2/cfk;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cfk$a;->e:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cfk$a;->e:Lretrofit2/Callback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cfk$a;->f:Lcom/sunia/HTREnginev2/cfk;

    invoke-interface {v0, p0, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cfk$a;->e:Lretrofit2/Callback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cfk$a;->f:Lcom/sunia/HTREnginev2/cfk;

    invoke-interface {v0, p0, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/cfk$a;->e:Lretrofit2/Callback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cfk$a;->f:Lcom/sunia/HTREnginev2/cfk;

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/cfk$a;->f:Lcom/sunia/HTREnginev2/cfk;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/cfk;->c(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/cfk$a;->b(Lretrofit2/Response;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/cfk$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
