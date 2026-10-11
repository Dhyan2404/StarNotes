.class Lorg/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLCollection;
.implements Ljava/io/Serializable;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/html/HTMLElement;S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    iput-short p2, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getLength(Lorg/w3c/dom/Element;)I
    .locals 4

    .line 2
    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    instance-of v2, v0, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lorg/apache/html/dom/HTMLCollectionImpl;->getLength(Lorg/w3c/dom/Element;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method private item(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/w0e;)Lorg/w3c/dom/Node;
    .locals 3

    .line 2
    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return-object v1

    :cond_0
    instance-of v2, v0, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, v1}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/w0e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/w0e;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, p2}, Lorg/apache/html/dom/HTMLCollectionImpl;->item(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/w0e;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    monitor-exit p1

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method private namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    .line 2
    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    monitor-exit p1

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1, p2}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, p2}, Lorg/apache/html/dom/HTMLCollectionImpl;->namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-exit p1

    return-object v1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p1

    :try_start_0
    iget-short p0, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    instance-of v1, p1, Lorg/apache/html/dom/HTMLFormControl;

    goto/16 :goto_1

    :pswitch_2
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLTableRowElement;

    goto/16 :goto_1

    :pswitch_3
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLOptionElement;

    goto/16 :goto_1

    :pswitch_4
    instance-of p0, p1, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-nez p0, :cond_0

    instance-of p0, p1, Lorg/w3c/dom/html/HTMLAreaElement;

    if-eqz p0, :cond_2

    :cond_0
    const-string p0, "href"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    :goto_0
    move v1, v0

    goto :goto_1

    :pswitch_5
    instance-of p0, p1, Lorg/w3c/dom/html/HTMLAppletElement;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/w3c/dom/html/HTMLObjectElement;

    if-eqz p0, :cond_2

    const-string p0, "application/java"

    const-string v2, "codetype"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "classid"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "java:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :pswitch_6
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLImageElement;

    goto :goto_1

    :pswitch_7
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLFormElement;

    goto :goto_1

    :pswitch_8
    instance-of p0, p1, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-eqz p0, :cond_2

    const-string p0, "name"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :pswitch_9
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLAreaElement;

    goto :goto_1

    :pswitch_a
    instance-of p0, p1, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TBODY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :pswitch_b
    instance-of v1, p1, Lorg/w3c/dom/html/HTMLTableCellElement;

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    instance-of p0, p1, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-eqz p0, :cond_3

    const-string p0, "name"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit p1

    return v0

    :cond_3
    const-string p0, "id"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lorg/apache/html/dom/HTMLCollectionImpl;->getLength(Lorg/w3c/dom/Element;)I

    move-result p0

    return p0
.end method

.method public final item(I)Lorg/w3c/dom/Node;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    new-instance v1, Lcom/sunia/HTREnginev2/w0e;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/w0e;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/apache/html/dom/HTMLCollectionImpl;->item(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/w0e;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTM012 Argument \'index\' is negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final namedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lorg/apache/html/dom/HTMLCollectionImpl;->namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "HTM013 Argument \'name\' is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public recurse()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
