.class public Lnet/sf/saxon/event/StreamWriterToReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/StreamWriterToReceiver$c;,
        Lnet/sf/saxon/event/StreamWriterToReceiver$b;,
        Lnet/sf/saxon/event/StreamWriterToReceiver$d;
    }
.end annotation


# static fields
.field public static final o:Z


# instance fields
.field public e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

.field public final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lnet/sf/saxon/event/Receiver;

.field public final h:Lnet/sf/saxon/z/IntPredicateProxy;

.field public i:Z

.field public j:I

.field public k:Z

.field public final l:Lnet/sf/saxon/event/NamespaceReducer;

.field public final m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->f:Ljava/util/Stack;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    const/4 v2, -0x1

    iput v2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->n:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v3, p1}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object v3, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->l:Lnet/sf/saxon/event/NamespaceReducer;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->h:Lnet/sf/saxon/z/IntPredicateProxy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lnet/sf/saxon/pull/NamespaceContextImpl;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/pull/NamespaceContextImpl;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->n:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/event/StreamWriterToReceiver;)Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->n:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/event/StreamWriterToReceiver;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeEndDocument()V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(Lnet/sf/saxon/event/StreamWriterToReceiver$d;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    const-string v1, "Attribute"

    const-string v2, "Element"

    const-string v3, "Local name of "

    if-nez v0, :cond_1

    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is missing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v4, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    const-string v5, " is invalid"

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_4

    iput-object v0, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    :cond_4
    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    if-nez p2, :cond_5

    iput-object v0, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    :cond_5
    iget-boolean p2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz p2, :cond_7

    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->g(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Namespace URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public final e()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartDocument()V

    :cond_0
    iget-object v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    if-eqz v1, :cond_b

    :try_start_0
    iget-object v1, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->d(Lnet/sf/saxon/event/StreamWriterToReceiver$d;Z)V

    iget-object v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v1, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/event/StreamWriterToReceiver;->d(Lnet/sf/saxon/event/StreamWriterToReceiver$d;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v1, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v1, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    iget-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_2
    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v5, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object v6, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceMap;

    iget-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v5, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    :cond_3
    iget-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v3, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v6, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-nez v6, :cond_5

    :try_start_1
    iput-object v7, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    :cond_5
    iget-object v6, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    if-nez v6, :cond_6

    iput-object v7, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    :cond_6
    iget-object v6, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object v5, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v3

    iget-object v5, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v5, v5, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v3

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v6, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lnet/sf/saxon/om/NoNamespaceName;

    iget-object v7, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-direct {v6, v7}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    :goto_5
    move-object v12, v6

    goto :goto_6

    :cond_8
    new-instance v6, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v7, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object v9, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    iget-object v11, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v9, v11}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object v9, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v7, v9}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    goto :goto_5

    :goto_6
    new-instance v6, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-object v14, v3, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->d:Ljava/lang/String;

    sget-object v15, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/16 v16, 0x0

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v10, v6}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v10

    goto :goto_4

    :cond_9
    iget-object v7, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v9

    sget-object v12, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v13, 0x0

    move-object v11, v1

    invoke-interface/range {v7 .. v13}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    const/4 v3, 0x0

    iput-object v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-boolean v3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->k:Z

    if-eqz v3, :cond_a

    iput-boolean v2, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->k:Z

    iget v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    sub-int/2addr v1, v4

    iput v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    iget-object v1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver;->f:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    :goto_7
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object v0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iget-object v3, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v1, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->l:Lnet/sf/saxon/event/NamespaceReducer;

    invoke-virtual {v0}, Lnet/sf/saxon/event/NamespaceReducer;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->l:Lnet/sf/saxon/event/NamespaceReducer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lnet/sf/saxon/event/NamespaceReducer;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    :cond_5
    return-object v2
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$c;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/StreamWriterToReceiver$c;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver;)V

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->n:Ljavax/xml/namespace/NamespaceContext;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    instance-of p0, p0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->h:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-static {p1, p0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->firstInvalidChar(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/z/IntPredicateProxy;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCheckValues()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    return p0
.end method

.method public setCheckValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    if-gtz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->n:Ljavax/xml/namespace/NamespaceContext;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setNamespaceContext may only be called at the start of the document"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid namespace prefix: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid namespace URI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    .line 5
    iput-object p1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    .line 6
    iput-object p2, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->d:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write attribute when not in a start tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    .line 25
    iput-object p1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    .line 26
    iput-object p2, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    .line 27
    iput-object p3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->d:Ljava/lang/String;

    .line 28
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p4}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    .line 15
    iput-object p1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    .line 16
    iput-object p2, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    .line 17
    iput-object p3, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    .line 18
    iput-object p4, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->d:Ljava/lang/String;

    .line 19
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write attribute when not in a start tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 3
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->h(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    sget-object p1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal XML character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeCharacters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->h(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz v1, :cond_2

    const-string v1, "--"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Comment contains \'--\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    sget-object p1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid XML character in comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    iput-object p1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->c:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write namespace when not in a start tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 14
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartElement(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->k:Z

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->k:Z

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->k:Z

    return-void
.end method

.method public writeEndDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    :goto_0
    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeEndElement()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    iput v1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "writeEndDocument with no matching writeStartDocument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeEndElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "writeEndElement with no matching writeStartElement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "writeEntityRef"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    iput-object p2, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    iput-object p1, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->c:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write namespace when not in a start tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeDefaultNamespace(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 5
    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->i:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->h(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid character in PI data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PITarget: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    sget-object p2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeStartDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, "utf-8"

    const-string v1, "1.0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 2
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    iget p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    .line 5
    iget-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->g:Lnet/sf/saxon/event/Receiver;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iput p2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "writeStartDocument must be the first call"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 4
    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    .line 5
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    invoke-direct {v0}, Lnet/sf/saxon/event/StreamWriterToReceiver$b;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    .line 6
    iget-object p0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 11
    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    .line 12
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    invoke-direct {v0}, Lnet/sf/saxon/event/StreamWriterToReceiver$b;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    .line 13
    iget-object p0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iput-object p2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/StreamWriterToReceiver;->c(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->m:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/event/StreamWriterToReceiver;->e()V

    .line 20
    iget v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->j:I

    .line 21
    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    invoke-direct {v0}, Lnet/sf/saxon/event/StreamWriterToReceiver$b;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver;->e:Lnet/sf/saxon/event/StreamWriterToReceiver$b;

    .line 22
    iget-object p0, v0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    iput-object p2, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->c:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->b:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;->a:Ljava/lang/String;

    return-void
.end method
