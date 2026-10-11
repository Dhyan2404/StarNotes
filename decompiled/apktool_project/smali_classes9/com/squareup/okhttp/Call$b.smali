.class public Lcom/squareup/okhttp/Call$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/squareup/okhttp/Request;

.field public final c:Z

.field public final synthetic d:Lcom/squareup/okhttp/Call;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Call$b;->d:Lcom/squareup/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/squareup/okhttp/Call$b;->a:I

    iput-object p3, p0, Lcom/squareup/okhttp/Call$b;->b:Lcom/squareup/okhttp/Request;

    iput-boolean p4, p0, Lcom/squareup/okhttp/Call$b;->c:Z

    return-void
.end method


# virtual methods
.method public connection()Lcom/squareup/okhttp/Connection;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/okhttp/Call$b;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/Call$b;->d:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/squareup/okhttp/Call$b;

    iget-object v1, p0, Lcom/squareup/okhttp/Call$b;->d:Lcom/squareup/okhttp/Call;

    iget v2, p0, Lcom/squareup/okhttp/Call$b;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/squareup/okhttp/Call$b;->c:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/squareup/okhttp/Call$b;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V

    iget-object p1, p0, Lcom/squareup/okhttp/Call$b;->d:Lcom/squareup/okhttp/Call;

    invoke-static {p1}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object p1

    iget p0, p0, Lcom/squareup/okhttp/Call$b;->a:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/okhttp/Interceptor;

    invoke-interface {p0, v0}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Call$b;->d:Lcom/squareup/okhttp/Call;

    iget-boolean p0, p0, Lcom/squareup/okhttp/Call$b;->c:Z

    invoke-virtual {v0, p1, p0}, Lcom/squareup/okhttp/Call;->e(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public request()Lcom/squareup/okhttp/Request;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$b;->b:Lcom/squareup/okhttp/Request;

    return-object p0
.end method
