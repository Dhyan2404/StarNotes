.class public Lorg/mortbay/jetty/b;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/b;->e:Lorg/mortbay/jetty/HttpConnection;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    :goto_0
    return-void
.end method
