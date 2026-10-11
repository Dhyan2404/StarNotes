.class public final Lcom/squareup/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/squareup/okhttp/MediaType;


# instance fields
.field public final a:Lokio/Buffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/FormEncodingBuilder;->b:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    .locals 9

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " \"\'<>#&="

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/squareup/okhttp/HttpUrl;->g(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/squareup/okhttp/HttpUrl;->g(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V

    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    .locals 9

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " \"\'<>#&="

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/squareup/okhttp/HttpUrl;->g(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/squareup/okhttp/HttpUrl;->g(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V

    return-object p0
.end method

.method public build()Lcom/squareup/okhttp/RequestBody;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/okhttp/FormEncodingBuilder;->b:Lcom/squareup/okhttp/MediaType;

    iget-object p0, p0, Lcom/squareup/okhttp/FormEncodingBuilder;->a:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Form encoded body must have at least one part."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
