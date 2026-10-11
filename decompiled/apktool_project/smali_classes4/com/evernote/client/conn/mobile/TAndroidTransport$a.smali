.class public Lcom/evernote/client/conn/mobile/TAndroidTransport$a;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/conn/mobile/TAndroidTransport;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/conn/mobile/TAndroidTransport;


# direct methods
.method public constructor <init>(Lcom/evernote/client/conn/mobile/TAndroidTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 2

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-static {v0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->a(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-static {v0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->a(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-static {p0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->a(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b()Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-static {v0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->c(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Lcom/evernote/client/conn/mobile/ByteStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/conn/mobile/ByteStore;->getData()[B

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;->e:Lcom/evernote/client/conn/mobile/TAndroidTransport;

    invoke-static {p0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;->c(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Lcom/evernote/client/conn/mobile/ByteStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/ByteStore;->getBytesWritten()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
