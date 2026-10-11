.class public Lnet/sf/saxon/lib/ParseOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient A:Lorg/xml/sax/EntityResolver;

.field public transient B:Lorg/xml/sax/ErrorHandler;

.field public a:I

.field public b:I

.field public c:Lnet/sf/saxon/om/StructuredQName;

.field public d:Lnet/sf/saxon/type/SchemaType;

.field public e:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lnet/sf/saxon/om/TreeModel;

.field public g:Lnet/sf/saxon/om/SpaceStrippingRule;

.field public h:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public transient j:Lnet/sf/saxon/lib/ErrorReporter;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/FilterFactory;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Lnet/sf/saxon/type/ValidationParams;

.field public t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lnet/sf/saxon/lib/InvalidityHandler;

.field public x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field

.field public transient y:Lorg/xml/sax/XMLReader;

.field public z:Lnet/sf/saxon/trans/Maker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/trans/Maker<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    .line 3
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->b:I

    .line 4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    .line 6
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    .line 7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    .line 8
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    .line 9
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    .line 10
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    .line 11
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    .line 12
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    .line 14
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    .line 15
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    .line 16
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    .line 18
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    .line 19
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    .line 20
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    .line 21
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    .line 22
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    .line 23
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    .line 24
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    .line 25
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    .line 26
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    .line 29
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->b:I

    .line 30
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    .line 32
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    .line 33
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    .line 34
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    .line 35
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    .line 36
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    .line 37
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    .line 38
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    .line 40
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    .line 41
    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    .line 42
    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    const v0, 0x7fffffff

    .line 43
    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    .line 44
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    .line 45
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    .line 46
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    .line 48
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    .line 49
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    .line 50
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    .line 51
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    .line 52
    iput-object v1, p0, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    .line 53
    iget v0, p1, Lnet/sf/saxon/lib/ParseOptions;->a:I

    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    .line 54
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    .line 55
    iget v0, p1, Lnet/sf/saxon/lib/ParseOptions;->b:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    .line 56
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    .line 57
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    .line 58
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    .line 59
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    .line 60
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    .line 61
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    .line 62
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    .line 63
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    .line 64
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    .line 65
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    .line 66
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    .line 68
    :cond_0
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    .line 69
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    .line 70
    iget v0, p1, Lnet/sf/saxon/lib/ParseOptions;->r:I

    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    .line 71
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    .line 72
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    .line 73
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    .line 75
    :cond_1
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    .line 77
    :cond_2
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    .line 78
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    .line 79
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    .line 80
    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->getXMLReaderMaker()Lnet/sf/saxon/trans/Maker;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->z:Lnet/sf/saxon/trans/Maker;

    .line 81
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    .line 82
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    .line 83
    iget-object p1, p1, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public static close(Ljavax/xml/transform/Source;)V
    .locals 1

    :try_start_0
    instance-of v0, p0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_3

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/AugmentedSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addFilter(Lnet/sf/saxon/event/FilterFactory;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParserFeature(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParserProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyDefaults(Lnet/sf/saxon/Configuration;)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/lib/ParseOptions;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :cond_1
    iget v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTreeModel()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/om/TreeModel;->getTreeModel(I)Lnet/sf/saxon/om/TreeModel;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isLineNumbering()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    :cond_6
    return-void
.end method

.method public getApplicableAccumulators()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    return-object p0
.end method

.method public getDTDValidationMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/ParseOptions;->b:I

    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public getFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/FilterFactory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    return-object p0
.end method

.method public getInvalidityHandler()Lnet/sf/saxon/lib/InvalidityHandler;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    return-object p0
.end method

.method public getModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    :cond_0
    return-object p0
.end method

.method public getParserFeature(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getParserFeatures()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    return-object p0
.end method

.method public getParserProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    return-object p0
.end method

.method public getParserProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaValidationMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    return p0
.end method

.method public getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-object p0
.end method

.method public getTopLevelElement()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getTopLevelType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getTreeModel()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/TreeModel;->getSymbolicValue()I

    move-result p0

    return p0
.end method

.method public getValidationErrorLimit()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    return p0
.end method

.method public getValidationParams()Lnet/sf/saxon/type/ValidationParams;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    return-object p0
.end method

.method public getValidationStatisticsRecipient()Lnet/sf/saxon/lib/ValidationStatisticsRecipient;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    return-object p0
.end method

.method public getWrapDocument()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    return-object p0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public getXMLReaderMaker()Lnet/sf/saxon/trans/Maker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/trans/Maker<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->z:Lnet/sf/saxon/trans/Maker;

    return-object p0
.end method

.method public isAddCommentsAfterValidationErrors()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    return p0
.end method

.method public isCheckEntityReferences()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    return p0
.end method

.method public isContinueAfterValidationErrors()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    return p0
.end method

.method public isExpandAttributeDefaults()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    return p0
.end method

.method public isLineNumbering()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

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

.method public isLineNumberingSet()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public isPleaseCloseAfterUse()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    return p0
.end method

.method public isStable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    return p0
.end method

.method public isUseXsiSchemaLocation()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    return p0
.end method

.method public isXIncludeAware()Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "http://apache.org/xml/features/xinclude"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public isXIncludeAwareSet()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public merge(Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 3

    iget v0, p1, Lnet/sf/saxon/lib/ParseOptions;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :cond_0
    iget v0, p1, Lnet/sf/saxon/lib/ParseOptions;->a:I

    if-eqz v0, :cond_1

    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    :cond_1
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    :cond_2
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    :cond_3
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    :cond_4
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    :cond_5
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    :cond_6
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    :cond_7
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    :cond_8
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    :cond_9
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    iget-object v2, p1, Lnet/sf/saxon/lib/ParseOptions;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    :cond_c
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    iget-object v2, p1, Lnet/sf/saxon/lib/ParseOptions;->u:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    :cond_e
    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    iget-object v2, p1, Lnet/sf/saxon/lib/ParseOptions;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_f
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    const/4 v2, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p0, v2}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    :cond_10
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    if-nez v0, :cond_11

    iput-boolean v2, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    :cond_11
    iget-boolean v0, p1, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    :cond_12
    iget v0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    iget v1, p1, Lnet/sf/saxon/lib/ParseOptions;->r:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    :cond_13
    iget-object v0, p1, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    :cond_14
    iget-object p1, p1, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    if-eqz p1, :cond_15

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    :cond_15
    return-void
.end method

.method public obtainXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/lib/ParseOptions;->z:Lnet/sf/saxon/trans/Maker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/trans/Maker;->make()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/XMLReader;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAddCommentsAfterValidationErrors(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->m:Z

    return-void
.end method

.method public setApplicableAccumulators(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->x:Ljava/util/Set;

    return-void
.end method

.method public setCheckEntityReferences(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->p:Z

    return-void
.end method

.method public setContinueAfterValidationErrors(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->l:Z

    return-void
.end method

.method public setDTDValidationMode(I)V
    .locals 2

    iput p1, p0, Lnet/sf/saxon/lib/ParseOptions;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/ParseOptions;->addParserFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->A:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->B:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/lib/StandardErrorReporter;

    invoke-direct {p1}, Lnet/sf/saxon/lib/StandardErrorReporter;-><init>()V

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->j:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setExpandAttributeDefaults(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->n:Z

    return-void
.end method

.method public setInvalidityHandler(Lnet/sf/saxon/lib/InvalidityHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->w:Lnet/sf/saxon/lib/InvalidityHandler;

    return-void
.end method

.method public setLineNumbering(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->h:Ljava/util/Optional;

    return-void
.end method

.method public setModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public setPleaseCloseAfterUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->i:Z

    return-void
.end method

.method public setSchemaValidationMode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/ParseOptions;->a:I

    return-void
.end method

.method public setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->g:Lnet/sf/saxon/om/SpaceStrippingRule;

    return-void
.end method

.method public setStable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->q:Z

    return-void
.end method

.method public setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->c:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->d:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method

.method public setTreeModel(I)V
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/om/TreeModel;->getTreeModel(I)Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->f:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public setUseXsiSchemaLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ParseOptions;->o:Z

    return-void
.end method

.method public setValidationErrorLimit(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/ParseOptions;->r:I

    return-void
.end method

.method public setValidationParams(Lnet/sf/saxon/type/ValidationParams;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->s:Lnet/sf/saxon/type/ValidationParams;

    return-void
.end method

.method public setValidationStatisticsRecipient(Lnet/sf/saxon/lib/ValidationStatisticsRecipient;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->t:Lnet/sf/saxon/lib/ValidationStatisticsRecipient;

    return-void
.end method

.method public setWrapDocument(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->e:Ljava/util/Optional;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 1

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/ParseOptions;->addParserFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->y:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setXMLReaderMaker(Lnet/sf/saxon/trans/Maker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/Maker<",
            "Lorg/xml/sax/XMLReader;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/lib/ParseOptions;->z:Lnet/sf/saxon/trans/Maker;

    return-void
.end method
