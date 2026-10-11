.class public Lnet/sf/saxon/ma/json/JsonHandlerMap;
.super Lnet/sf/saxon/ma/json/JsonHandler;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field protected keys:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;I)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/ma/json/JsonHandler;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->keys:Ljava/util/Stack;

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandler;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public final e(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->getMembers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->keys:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :goto_0
    return-void
.end method

.method public endArray()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    :goto_0
    return-void
.end method

.method public endMap()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    :goto_0
    return-void
.end method

.method public getResult()Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->keys:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startArray()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {v1, v0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startMap()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerMap;->d:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public writeNull()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public writeNumeric(Ljava/lang/String;Lnet/sf/saxon/value/AtomicValue;)V
    .locals 0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->reEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->e(Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method
