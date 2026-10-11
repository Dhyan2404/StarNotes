.class public Lorg/mortbay/jetty/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public e:Lorg/mortbay/jetty/HttpFields$Field;

.field public final synthetic f:Lorg/mortbay/jetty/HttpFields$Field;

.field public final synthetic g:I

.field public final synthetic h:Lorg/mortbay/jetty/HttpFields;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/e;->h:Lorg/mortbay/jetty/HttpFields;

    iput-object p2, p0, Lorg/mortbay/jetty/e;->f:Lorg/mortbay/jetty/HttpFields$Field;

    iput p3, p0, Lorg/mortbay/jetty/e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/e;->g:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/e;->e:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/e;->g:I

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
