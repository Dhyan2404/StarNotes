.class public final Lcom/squareup/okhttp/RequestBody$b;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[BII)Lcom/squareup/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/squareup/okhttp/MediaType;

.field public final synthetic f:I

.field public final synthetic g:[B

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/MediaType;I[BI)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$b;->e:Lcom/squareup/okhttp/MediaType;

    iput p2, p0, Lcom/squareup/okhttp/RequestBody$b;->f:I

    iput-object p3, p0, Lcom/squareup/okhttp/RequestBody$b;->g:[B

    iput p4, p0, Lcom/squareup/okhttp/RequestBody$b;->h:I

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget p0, p0, Lcom/squareup/okhttp/RequestBody$b;->f:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/RequestBody$b;->e:Lcom/squareup/okhttp/MediaType;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$b;->g:[B

    iget v1, p0, Lcom/squareup/okhttp/RequestBody$b;->h:I

    iget p0, p0, Lcom/squareup/okhttp/RequestBody$b;->f:I

    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
