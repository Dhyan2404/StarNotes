.class public Lorg/mortbay/xml/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public f:Lorg/mortbay/xml/XmlParser$Node;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lorg/mortbay/xml/XmlParser$Node;


# direct methods
.method public constructor <init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/xml/a;->h:Lorg/mortbay/xml/XmlParser$Node;

    iput-object p2, p0, Lorg/mortbay/xml/a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mortbay/xml/a;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lorg/mortbay/xml/a;->f:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/a;->h:Lorg/mortbay/xml/XmlParser$Node;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser$Node;->a(Lorg/mortbay/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mortbay/xml/a;->e:I

    iget-object v2, p0, Lorg/mortbay/xml/a;->h:Lorg/mortbay/xml/XmlParser$Node;

    invoke-static {v2}, Lorg/mortbay/xml/XmlParser$Node;->a(Lorg/mortbay/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/mortbay/xml/a;->h:Lorg/mortbay/xml/XmlParser$Node;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser$Node;->a(Lorg/mortbay/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lorg/mortbay/xml/a;->e:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    iget-object v2, p0, Lorg/mortbay/xml/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser$Node;->b(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/mortbay/xml/a;->f:Lorg/mortbay/xml/XmlParser$Node;

    return v1

    :cond_1
    iget v0, p0, Lorg/mortbay/xml/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/xml/a;->e:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/xml/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/a;->f:Lorg/mortbay/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/mortbay/xml/a;->f:Lorg/mortbay/xml/XmlParser$Node;

    iget v0, p0, Lorg/mortbay/xml/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/xml/a;->e:I

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/mortbay/xml/a;->f:Lorg/mortbay/xml/XmlParser$Node;

    iget v0, p0, Lorg/mortbay/xml/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/xml/a;->e:I

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
