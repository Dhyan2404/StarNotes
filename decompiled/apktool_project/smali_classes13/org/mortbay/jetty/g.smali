.class public Lorg/mortbay/jetty/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public e:Lorg/mortbay/util/QuotedStringTokenizer;

.field public final synthetic f:Ljava/util/Enumeration;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lorg/mortbay/jetty/HttpFields;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/g;->h:Lorg/mortbay/jetty/HttpFields;

    iput-object p2, p0, Lorg/mortbay/jetty/g;->f:Ljava/util/Enumeration;

    iput-object p3, p0, Lorg/mortbay/jetty/g;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/g;->e:Lorg/mortbay/util/QuotedStringTokenizer;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    iget-object v0, p0, Lorg/mortbay/jetty/g;->e:Lorg/mortbay/util/QuotedStringTokenizer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/g;->f:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/g;->f:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/mortbay/util/QuotedStringTokenizer;

    iget-object v4, p0, Lorg/mortbay/jetty/g;->g:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2, v2}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lorg/mortbay/jetty/g;->e:Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/g;->e:Lorg/mortbay/util/QuotedStringTokenizer;

    return v2
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/g;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/g;->e:Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
