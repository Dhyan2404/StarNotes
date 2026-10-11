.class public Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public final synthetic d:Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->d:Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p2, p3, :cond_0

    iput p2, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->a:I

    iput p3, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->b:I

    iput-object p4, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "from>to"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->a:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->b:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
