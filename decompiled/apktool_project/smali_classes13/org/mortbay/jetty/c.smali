.class public Lorg/mortbay/jetty/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public e:I

.field public f:Lorg/mortbay/jetty/HttpFields$Field;

.field public final synthetic g:I

.field public final synthetic h:Lorg/mortbay/jetty/HttpFields;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpFields;I)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/c;->h:Lorg/mortbay/jetty/HttpFields;

    iput p2, p0, Lorg/mortbay/jetty/c;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mortbay/jetty/c;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/c;->e:I

    iget-object v2, p0, Lorg/mortbay/jetty/c;->h:Lorg/mortbay/jetty/HttpFields;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/c;->h:Lorg/mortbay/jetty/HttpFields;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    iget v2, p0, Lorg/mortbay/jetty/c;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mortbay/jetty/c;->e:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->a(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/c;->g:I

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/c;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->d(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/c;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return-object v0
.end method
