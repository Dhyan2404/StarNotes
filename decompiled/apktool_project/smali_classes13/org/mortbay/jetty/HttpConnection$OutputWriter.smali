.class public Lorg/mortbay/jetty/HttpConnection$OutputWriter;
.super Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputWriter"
.end annotation


# instance fields
.field public final synthetic l:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$OutputWriter;->l:Lorg/mortbay/jetty/HttpConnection;

    iget-object p1, p1, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;-><init>(Lorg/mortbay/jetty/AbstractGenerator$Output;)V

    return-void
.end method
