.class public Lnet/sf/saxon/functions/OptionsParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/value/SequenceType;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->d:Ljava/util/Map;

    const-string v0, "SXJE9999"

    iput-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->g:Z

    return-void
.end method


# virtual methods
.method public addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addRequiredOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/OptionsParameter;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefaultOptions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getErrorCodeForAbsentValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->f:Ljava/lang/String;

    return-object p0
.end method

.method public isAllowCastFromString()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->g:Z

    return p0
.end method

.method public processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/map/MapItem;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/functions/OptionsParameter;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No value supplied for required option: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->f:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/functions/OptionsParameter;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Q{"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lnet/sf/saxon/value/QNameValue;

    invoke-static {v4}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    goto :goto_2

    :cond_3
    new-instance v5, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v5, v4}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v5}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v5, v1}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    instance-of v6, v5, Lnet/sf/saxon/value/StringValue;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lnet/sf/saxon/functions/OptionsParameter;->g:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/type/AtomicType;

    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v6

    move-object v8, v5

    check-cast v8, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/type/AtomicType;

    invoke-static {v8, v9, v6}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v5
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_3

    :catch_0
    :cond_4
    move v6, v7

    :goto_3
    if-nez v6, :cond_5

    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v8, 0xf

    invoke-direct {v6, v8, v4, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v8, "XPTY0004"

    invoke-virtual {v6, v8}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    sget-object v8, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v5, v3, v6, v8}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    iget-object v5, p0, Lnet/sf/saxon/functions/OptionsParameter;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_9

    instance-of v6, v3, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v6}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid option "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Valid values are:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v7, 0x1

    if-nez v7, :cond_7

    const-string v2, " "

    goto :goto_5

    :cond_7
    const-string v2, ", "

    :goto_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v1

    goto :goto_4

    :cond_8
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/functions/OptionsParameter;->e:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_9
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lnet/sf/saxon/functions/OptionsParameter;->b:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_2

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    return-object v0
.end method

.method public setAllowCastFromString(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/functions/OptionsParameter;->g:Z

    return-void
.end method

.method public varargs setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lnet/sf/saxon/functions/OptionsParameter;->d:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lnet/sf/saxon/functions/OptionsParameter;->e:Ljava/lang/String;

    return-void
.end method

.method public setErrorCodeForAbsentValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/OptionsParameter;->f:Ljava/lang/String;

    return-void
.end method
