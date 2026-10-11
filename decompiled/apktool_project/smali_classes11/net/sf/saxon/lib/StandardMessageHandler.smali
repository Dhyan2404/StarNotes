.class public Lnet/sf/saxon/lib/StandardMessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lnet/sf/saxon/s9api/Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic h:Z


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;

.field public f:Lnet/sf/saxon/str/UnicodeWriter;

.field public final g:Lnet/sf/saxon/serialize/SerializationProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->e:Lnet/sf/saxon/Configuration;

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    const-string v0, "method"

    const-string v1, "xml"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "indent"

    const-string v1, "yes"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0, p1}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->g:Lnet/sf/saxon/serialize/SerializationProperties;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/s9api/Message;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardMessageHandler;->accept(Lnet/sf/saxon/s9api/Message;)V

    return-void
.end method

.method public declared-synchronized accept(Lnet/sf/saxon/s9api/Message;)V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Message;->getContent()Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->f:Lnet/sf/saxon/str/UnicodeWriter;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/Logger;->asWriter()Ljava/io/Writer;

    move-result-object v0

    .line 5
    new-instance v1, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->f:Lnet/sf/saxon/str/UnicodeWriter;

    .line 6
    :cond_0
    new-instance v0, Lnet/sf/saxon/serialize/UnicodeWriterResult;

    iget-object v1, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->f:Lnet/sf/saxon/str/UnicodeWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/serialize/UnicodeWriterResult;-><init>(Lnet/sf/saxon/str/UnicodeWriter;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->g:Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;)V

    .line 10
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 11
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->f:Lnet/sf/saxon/str/UnicodeWriter;

    return-object p0
.end method

.method public setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardMessageHandler;->f:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method
