.class public Lnet/sf/saxon/ma/json/JsonHandlerXML;
.super Lnet/sf/saxon/ma/json/JsonHandler;
.source "SourceFile"


# static fields
.field public static final PREFIX:Ljava/lang/String; = ""

.field public static final u:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions.xsd"

.field public static final v:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field public static final w:Lnet/sf/saxon/type/SimpleType;

.field public static final x:Lnet/sf/saxon/type/SimpleType;

.field public static final y:Lnet/sf/saxon/type/SimpleType;


# instance fields
.field public final d:Lnet/sf/saxon/event/Outputter;

.field public final e:Lnet/sf/saxon/event/Builder;

.field public f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Lnet/sf/saxon/om/NamePool;

.field public k:Lnet/sf/saxon/om/FingerprintedQName;

.field public l:Lnet/sf/saxon/om/FingerprintedQName;

.field public m:Lnet/sf/saxon/om/FingerprintedQName;

.field public n:Lnet/sf/saxon/om/FingerprintedQName;

.field public o:Lnet/sf/saxon/om/FingerprintedQName;

.field public p:Lnet/sf/saxon/om/FingerprintedQName;

.field public q:Lnet/sf/saxon/om/FingerprintedQName;

.field public r:Lnet/sf/saxon/om/FingerprintedQName;

.field public s:Lnet/sf/saxon/om/FingerprintedQName;

.field public final t:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/type/SchemaType;",
            ">;"
        }
    .end annotation
.end field

.field public validate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->w:Lnet/sf/saxon/type/SimpleType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    sput-object v0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->x:Lnet/sf/saxon/type/SimpleType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    sput-object v0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->y:Lnet/sf/saxon/type/SimpleType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/ma/json/JsonHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->t:Ljava/util/Stack;

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->h(Lnet/sf/saxon/expr/XPathContext;I)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->e:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    new-instance p3, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p3, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p3, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p3}, Lnet/sf/saxon/event/Outputter;->open()V

    invoke-virtual {p3, p2}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method

.method public endMap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->t:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const/16 p0, 0x5c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public getResult()Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Outputter;->close()V

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->e:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getResult()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->getResult()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/expr/XPathContext;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->f:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->h:Z

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->validate:Z

    if-nez v0, :cond_4

    and-int/lit8 p2, p2, 0x20

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p2, v2

    :goto_4
    iput-boolean p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->types:Ljava/util/HashMap;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->j:Lnet/sf/saxon/om/NamePool;

    const-string p2, "map"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->k:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "array"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "string"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "number"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "boolean"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->o:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "null"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->p:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "key"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->k(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->q:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "escaped"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->k(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->r:Lnet/sf/saxon/om/FingerprintedQName;

    const-string p2, "escaped-key"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->k(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->s:Lnet/sf/saxon/om/FingerprintedQName;

    iget-boolean p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->validate:Z

    if-eqz p2, :cond_5

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p2, "validation"

    const/4 v0, -0x1

    invoke-virtual {p1, v2, p2, v0}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->j(Lnet/sf/saxon/Configuration;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0xc

    :try_start_2
    new-array v0, p2, [Ljava/lang/String;

    const-string v3, "mapType"

    aput-object v3, v0, v1

    const-string v3, "arrayType"

    aput-object v3, v0, v2

    const-string v2, "stringType"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "numberType"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "booleanType"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "nullType"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "mapWithinMapType"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "arrayWithinMapType"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "stringWithinMapType"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-string v2, "numberWithinMapType"

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const-string v2, "booleanWithinMapType"

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const-string v2, "nullWithinMapType"

    const/16 v3, 0xb

    aput-object v2, v0, v3

    :goto_5
    if-ge v1, p2, :cond_5

    aget-object v2, v0, v1

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const-string v4, ""

    const-string v5, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v3, v4, v5, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->setType(Ljava/lang/String;Lnet/sf/saxon/type/SchemaType;)V
    :try_end_2
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lnet/sf/saxon/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    const-string p0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isSchemaAvailable(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    const-string v1, "xpath-functions.scm"

    invoke-interface {v0, v1, p0}, Lnet/sf/saxon/Platform;->locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    const-string v1, "Loading schema for: http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    const-string v1, "classpath:xpath-functions.xsd"

    invoke-direct {v0, p0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->addSchemaSource(Ljavax/xml/transform/Source;)V

    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->j:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/FingerprintedQName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->j:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/FingerprintedQName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    return-object v0
.end method

.method public final m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->startContent()V

    return-void
.end method

.method public markAsEscaped(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->s:Lnet/sf/saxon/om/FingerprintedQName;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->r:Lnet/sf/saxon/om/FingerprintedQName;

    :goto_0
    move-object v1, p1

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    iget-boolean p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->validate:Z

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->x:Lnet/sf/saxon/type/SimpleType;

    goto :goto_1

    :cond_1
    sget-object p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->w:Lnet/sf/saxon/type/SimpleType;

    :goto_1
    move-object v2, p0

    const-string v3, "true"

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    return-void
.end method

.method public final n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->o(Lnet/sf/saxon/om/FingerprintedQName;Lnet/sf/saxon/type/SchemaType;)V

    return-void
.end method

.method public final o(Lnet/sf/saxon/om/FingerprintedQName;Lnet/sf/saxon/type/SchemaType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    iget-boolean v1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->validate:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p2

    :goto_0
    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->f:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->reEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean p1, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->markAsEscaped(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->d:Lnet/sf/saxon/event/Outputter;

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->q:Lnet/sf/saxon/om/FingerprintedQName;

    iget-boolean p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->validate:Z

    if-eqz p0, :cond_2

    sget-object p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->y:Lnet/sf/saxon/type/SimpleType;

    goto :goto_1

    :cond_2
    sget-object p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->w:Lnet/sf/saxon/type/SimpleType;

    :goto_1
    move-object v2, p0

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    :cond_3
    return-void
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->f:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->t:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setType(Ljava/lang/String;Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->types:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->l:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "arrayWithinMapType"

    goto :goto_0

    :cond_0
    const-string v1, "arrayType"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    return-void
.end method

.method public startMap()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->k:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mapWithinMapType"

    goto :goto_0

    :cond_0
    const-string v1, "mapType"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->t:Ljava/util/Stack;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g:Ljava/util/Stack;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->o:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "booleanWithinMapType"

    goto :goto_0

    :cond_0
    const-string v1, "booleanType"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_1

    :cond_1
    const-string p1, "false"

    :goto_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->p:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "nullWithinMapType"

    goto :goto_0

    :cond_0
    const-string v1, "nullType"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method

.method public writeNumeric(Ljava/lang/String;Lnet/sf/saxon/value/AtomicValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "numberWithinMapType"

    goto :goto_0

    :cond_0
    const-string v0, "numberType"

    :goto_0
    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "stringWithinMapType"

    goto :goto_0

    :cond_0
    const-string v1, "stringType"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->n(Lnet/sf/saxon/om/FingerprintedQName;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->reEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->markAsEscaped(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->m()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->g()V

    return-void
.end method
