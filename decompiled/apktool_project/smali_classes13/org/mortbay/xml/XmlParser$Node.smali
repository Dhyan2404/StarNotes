.class public Lorg/mortbay/xml/XmlParser$Node;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public e:Lorg/mortbay/xml/XmlParser$Node;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/lang/String;

.field public h:[Lorg/mortbay/xml/XmlParser$Attribute;

.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->i:Z

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Node;->e:Lorg/mortbay/xml/XmlParser$Node;

    iput-object p2, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    new-array p1, p1, [Lorg/mortbay/xml/XmlParser$Attribute;

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    if-ge v0, p1, :cond_2

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    new-instance v1, Lorg/mortbay/xml/XmlParser$Attribute;

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/mortbay/xml/XmlParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lorg/mortbay/xml/XmlParser$Node;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iput-boolean v1, p0, Lorg/mortbay/xml/XmlParser$Node;->i:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->i:Z

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/StringBuffer;Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_1

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v1, p1, p2}, Lorg/mortbay/xml/XmlParser$Node;->c(Ljava/lang/StringBuffer;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    const-string p2, "</"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    const-string p2, "/>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    .line 8
    iget-object v2, v1, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public getAttributes()[Lorg/mortbay/xml/XmlParser$Attribute;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->h:[Lorg/mortbay/xml/XmlParser$Attribute;

    return-object p0
.end method

.method public getParent()Lorg/mortbay/xml/XmlParser$Node;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->e:Lorg/mortbay/xml/XmlParser$Node;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->g:Ljava/lang/String;

    return-object p0
.end method

.method public iterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/mortbay/xml/a;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/xml/a;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$Node;->f:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(Z)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/xml/XmlParser$Node;->c(Ljava/lang/StringBuffer;Z)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString(ZZ)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
