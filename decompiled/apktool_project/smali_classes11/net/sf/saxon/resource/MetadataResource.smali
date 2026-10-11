.class public Lnet/sf/saxon/resource/MetadataResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lnet/sf/saxon/lib/Resource;

.field public final d:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/lib/Resource;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/resource/MetadataResource;->b:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/resource/MetadataResource;->c:Lnet/sf/saxon/lib/Resource;

    iput-object p3, p0, Lnet/sf/saxon/resource/MetadataResource;->a:Ljava/util/Map;

    iput-object p4, p0, Lnet/sf/saxon/resource/MetadataResource;->d:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/resource/MetadataResource;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/resource/MetadataResource;->b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/resource/MetadataResource;->c:Lnet/sf/saxon/lib/Resource;

    invoke-interface {p0}, Lnet/sf/saxon/lib/Resource;->getItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/MetadataResource;->c:Lnet/sf/saxon/lib/Resource;

    invoke-interface {p0}, Lnet/sf/saxon/lib/Resource;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 5

    new-instance v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/resource/MetadataResource;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/resource/MetadataResource;->b:Ljava/lang/String;

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    new-instance v1, Lnet/sf/saxon/expr/CallableDelegate;

    new-instance v2, Lcom/sunia/HTREnginev2/onj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/onj;-><init>(Lnet/sf/saxon/resource/MetadataResource;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/CallableDelegate;-><init>(Lnet/sf/saxon/expr/CallableDelegate$Lambda;)V

    new-instance p0, Lnet/sf/saxon/type/SpecificFunctionType;

    const/4 v2, 0x0

    new-array v3, v2, [Lnet/sf/saxon/value/SequenceType;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p0, v3, v4}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v3, Lnet/sf/saxon/functions/CallableFunction;

    invoke-direct {v3, v2, v1, p0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    const-string p0, "fetch"

    invoke-virtual {v0, p0, v3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/MetadataResource;->b:Ljava/lang/String;

    return-object p0
.end method
