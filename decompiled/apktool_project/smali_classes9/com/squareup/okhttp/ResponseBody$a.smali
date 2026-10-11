.class public final Lcom/squareup/okhttp/ResponseBody$a;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/ResponseBody;->create(Lcom/squareup/okhttp/MediaType;JLokio/BufferedSource;)Lcom/squareup/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/squareup/okhttp/MediaType;

.field public final synthetic g:J

.field public final synthetic h:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/MediaType;JLokio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/ResponseBody$a;->f:Lcom/squareup/okhttp/MediaType;

    iput-wide p2, p0, Lcom/squareup/okhttp/ResponseBody$a;->g:J

    iput-object p4, p0, Lcom/squareup/okhttp/ResponseBody$a;->h:Lokio/BufferedSource;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/ResponseBody$a;->g:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/ResponseBody$a;->f:Lcom/squareup/okhttp/MediaType;

    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/ResponseBody$a;->h:Lokio/BufferedSource;

    return-object p0
.end method
