.class public Lcom/squareup/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/squareup/okhttp/Request;

.field public b:Lcom/squareup/okhttp/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/squareup/okhttp/Handshake;

.field public f:Lcom/squareup/okhttp/Headers$Builder;

.field public g:Lcom/squareup/okhttp/ResponseBody;

.field public h:Lcom/squareup/okhttp/Response;

.field public i:Lcom/squareup/okhttp/Response;

.field public j:Lcom/squareup/okhttp/Response;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    .line 4
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Response;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    .line 7
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->a(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->a:Lcom/squareup/okhttp/Request;

    .line 8
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->b(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->b:Lcom/squareup/okhttp/Protocol;

    .line 9
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->c(Lcom/squareup/okhttp/Response;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    .line 10
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->d(Lcom/squareup/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->d:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->e(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->e:Lcom/squareup/okhttp/Handshake;

    .line 12
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->f(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    .line 13
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->g(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->g:Lcom/squareup/okhttp/ResponseBody;

    .line 14
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->h(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->h:Lcom/squareup/okhttp/Response;

    .line 15
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->i(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->i:Lcom/squareup/okhttp/Response;

    .line 16
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->j(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->j:Lcom/squareup/okhttp/Response;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method public static synthetic a(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->a:Lcom/squareup/okhttp/Request;

    return-object p0
.end method

.method public static synthetic b(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->b:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public static synthetic c(Lcom/squareup/okhttp/Response$Builder;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/squareup/okhttp/Response$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Handshake;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->e:Lcom/squareup/okhttp/Handshake;

    return-object p0
.end method

.method public static synthetic f(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Headers$Builder;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    return-object p0
.end method

.method public static synthetic g(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/ResponseBody;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->g:Lcom/squareup/okhttp/ResponseBody;

    return-object p0
.end method

.method public static synthetic h(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->h:Lcom/squareup/okhttp/Response;

    return-object p0
.end method

.method public static synthetic i(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->i:Lcom/squareup/okhttp/Response;

    return-object p0
.end method

.method public static synthetic j(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Response$Builder;->j:Lcom/squareup/okhttp/Response;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-object p0
.end method

.method public body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->g:Lcom/squareup/okhttp/ResponseBody;

    return-object p0
.end method

.method public build()Lcom/squareup/okhttp/Response;
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->a:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->b:Lcom/squareup/okhttp/Protocol;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    if-ltz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "protocol == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "request == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/Response$Builder;->l(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->i:Lcom/squareup/okhttp/Response;

    return-object p0
.end method

.method public code(I)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/Response$Builder;->c:I

    return-object p0
.end method

.method public handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->e:Lcom/squareup/okhttp/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-object p0
.end method

.method public headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    return-object p0
.end method

.method public final k(Lcom/squareup/okhttp/Response;)V
    .locals 0

    invoke-static {p1}, Lcom/squareup/okhttp/Response;->g(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V
    .locals 0

    invoke-static {p2}, Lcom/squareup/okhttp/Response;->g(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {p2}, Lcom/squareup/okhttp/Response;->h(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {p2}, Lcom/squareup/okhttp/Response;->i(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/squareup/okhttp/Response;->j(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/Response$Builder;->l(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->h:Lcom/squareup/okhttp/Response;

    return-object p0
.end method

.method public priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->k(Lcom/squareup/okhttp/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->j:Lcom/squareup/okhttp/Response;

    return-object p0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->b:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->f:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    return-object p0
.end method

.method public request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->a:Lcom/squareup/okhttp/Request;

    return-object p0
.end method
