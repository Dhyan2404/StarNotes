.class public Lorg/mortbay/jetty/h;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljavax/servlet/ServletInputStream;

.field public final synthetic f:Lorg/mortbay/jetty/Request;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/h;->f:Lorg/mortbay/jetty/Request;

    iput-object p3, p0, Lorg/mortbay/jetty/h;->e:Ljavax/servlet/ServletInputStream;

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/h;->e:Ljavax/servlet/ServletInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method
