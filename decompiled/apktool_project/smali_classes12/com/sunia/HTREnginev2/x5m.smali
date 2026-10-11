.class public Lcom/sunia/HTREnginev2/x5m;
.super Lcom/sunia/HTREnginev2/y5m;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/y5m;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x5m;->b:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x5m;->b:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    const/4 p4, 0x1

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method
