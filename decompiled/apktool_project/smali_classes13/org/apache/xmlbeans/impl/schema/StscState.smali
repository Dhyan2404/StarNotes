.class public Lorg/apache/xmlbeans/impl/schema/StscState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field static final FACETS_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_NONE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field static final FACETS_UNION:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field static final FIXED_FACETS_LIST:[Z

.field private static final FIXED_FACETS_NONE:[Z

.field static final FIXED_FACETS_UNION:[Z

.field private static final FIXED_FACETS_WS:[Z

.field private static final PROJECT_URL_PREFIX:Ljava/lang/String; = "project://local"

.field private static final XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final tl_stscStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _allowPartial:Z

.field private final _annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final _attributeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaAttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final _attributeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private _baseURI:Ljava/net/URI;

.field private _compatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private _config:Lorg/apache/xmlbeans/BindingConfig;

.field private final _containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            ">;"
        }
    .end annotation
.end field

.field private _dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

.field private _digest:[B

.field private final _documentTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private _doingDownloads:Z

.field private _entityResolver:Lorg/xml/sax/EntityResolver;

.field private _errorListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation
.end field

.field private _givenStsName:Ljava/lang/String;

.field private final _globalAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaGlobalAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final _globalElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaGlobalElement;",
            ">;"
        }
    .end annotation
.end field

.field private final _globalTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private final _idConstraints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaIdentityConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private _importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _mdefAll:Z

.field private final _mdefNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _misspelledNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final _modelGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaModelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final _namespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _noAnn:Z

.field private _noDigest:Z

.field private _noPvr:Z

.field private _noUpa:Z

.field private final _processingGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;"
        }
    .end annotation
.end field

.field private _recoveredErrors:I

.field private final _redefinedAttributeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final _redefinedGlobalTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final _redefinedModelGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final _s4sloader:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _schemasDir:Ljava/io/File;

.field private final _sourceForUri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _target:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

.field private final _typesByClassname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "preserve"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    const/16 v1, 0xc

    new-array v2, v1, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_NONE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-array v3, v1, [Z

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_NONE:[Z

    new-array v4, v1, [Z

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_WS:[Z

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v5, 0x0

    aput-object v5, v1, v0

    const/4 v0, 0x1

    aput-object v5, v1, v0

    const/4 v0, 0x2

    aput-object v5, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v6, 0x4

    aput-object v5, v1, v6

    const/4 v6, 0x5

    aput-object v5, v1, v6

    const/4 v6, 0x6

    aput-object v5, v1, v6

    const/4 v6, 0x7

    aput-object v5, v1, v6

    const/16 v6, 0x8

    aput-object v5, v1, v6

    const/16 v6, 0x9

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0xa

    aput-object v5, v1, v0

    const/16 v0, 0xb

    aput-object v5, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_UNION:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_UNION:[Z

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_LIST:[Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->tl_stscStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noDigest:Z

    .line 5
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_allowPartial:Z

    .line 6
    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalElements:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalAttributes:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_typesByClassname:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_misspelledNames:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_processingGroups:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_namespaces:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_annotations:Ljava/util/List;

    .line 24
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->buildDefaultMdefNamespaces()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_sourceForUri:Ljava/util/Map;

    const-string v0, "project://local/"

    .line 26
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_baseURI:Ljava/net/URI;

    .line 27
    const-class v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForClassLoader(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_s4sloader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/StscState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/StscState;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/impl/schema/StscState;ZLjava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$mapTypes$5(ZLjava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method private addContainer(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalElements()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/r2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalAttributes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/s2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->modelGroups()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeGroups()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/u2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->mapTypes(Ljava/util/Map;Z)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->documentTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->mapTypes(Ljava/util/Map;Z)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->mapTypes(Ljava/util/Map;Z)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->identityConstraints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/v2n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_annotations:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_namespaces:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->unsetImmutable()V

    return-void
.end method

.method public static addError(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 6
    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/net/URL;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0, p3}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addInfo(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addInfo(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;[Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addWarning(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addWarning(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v0, p3}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$addContainer$1(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    return-void
.end method

.method private static buildDefaultMdefNamespaces()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http://www.openuri.org/2002/04/soap/conversation/"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/StscState;->XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$addContainer$2(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    return-void
.end method

.method public static clearThreadLocals()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->tl_stscStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_compatMap:Ljava/util/Map;

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method private static crunchName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$addContainer$0(Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    return-void
.end method

.method public static synthetic e(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$addContainer$4(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    return-void
.end method

.method public static end()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->tl_stscStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;->pop()V

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->lambda$addContainer$3(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    return-void
.end method

.method public static get()Lorg/apache/xmlbeans/impl/schema/StscState;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->tl_stscStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;->current:Lorg/apache/xmlbeans/impl/schema/StscState;

    return-object v0
.end method

.method private ignoreMdef(Ljavax/xml/namespace/QName;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addContainer$0(Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalElements:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-void
.end method

.method private synthetic lambda$addContainer$1(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalAttributes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-void
.end method

.method private synthetic lambda$addContainer$2(Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaModelGroup;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaModelGroup;

    return-void
.end method

.method private synthetic lambda$addContainer$3(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAttributeGroup;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-void
.end method

.method private synthetic lambda$addContainer$4(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    return-void
.end method

.method private synthetic lambda$mapTypes$5(ZLjava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lorg/apache/xmlbeans/SchemaType;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addClassname(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)V

    :cond_1
    return-void
.end method

.method private mapTypes(Ljava/util/Map;Z)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;Z)",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/q2n;

    invoke-direct {v0, p0, p2, p1}, Lcom/sunia/HTREnginev2/q2n;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState;ZLjava/util/Map;)V

    return-object v0
.end method

.method private relativize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x5c

    const/4 v4, 0x1

    const/16 v5, 0x2f

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "project://local"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3a

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, "^\\w+$"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "project://local/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_baseURI:Ljava/net/URI;

    if-eqz p0, :cond_5

    .line 8
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    if-nez p2, :cond_6

    return-object p1

    .line 12
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_7

    const-string v1, ""

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p0, v4

    const/16 v2, 0x3f

    .line 14
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, p2, :cond_8

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "URI_SHA_1_"

    .line 17
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static start()Lorg/apache/xmlbeans/impl/schema/StscState;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->tl_stscStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;-><init>(Lorg/apache/xmlbeans/impl/schema/StscState$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/StscState$StscStack;->push()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_annotations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    :cond_0
    return-void
.end method

.method public addAttributeGroup(Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    const-string v2, "attribute group"

    const-string v3, "sch-props-correct.2"

    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getRef()Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz p2, :cond_3

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getRef()Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public addAttributeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljavax/xml/namespace/QName;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    const-string v1, "global attribute"

    const-string v2, "sch-props-correct.2"

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addClassname(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_typesByClassname:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDocumentType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Ljavax/xml/namespace/QName;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    const-string v1, "global element"

    const-string v2, "sch-props-correct.2"

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v2, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addDocumentType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addGlobalAttribute(Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;)V

    :cond_0
    return-void
.end method

.method public addGlobalElement(Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalElements:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    :cond_0
    return-void
.end method

.method public addGlobalType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    const-string v2, "global type"

    const-string v3, "sch-props-correct.2"

    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz p2, :cond_3

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public addIdConstraint(Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "identity constraint"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    const-string v1, "sch-props-correct.2"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getRef()Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addModelGroup(Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    const-string v2, "model group"

    const-string v3, "sch-props-correct.2"

    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getRef()Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->ignoreMdef(Ljavax/xml/namespace/QName;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    if-eqz p2, :cond_3

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getRef()Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public addNamespace(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_namespaces:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewContainer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sts()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addNamespace(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSchemaDigest([B)V
    .locals 5

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noDigest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noDigest:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    if-nez v0, :cond_2

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    array-length v0, v0

    array-length v1, p1

    if-ge v1, v0, :cond_3

    array-length v0, p1

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    aget-byte v3, v2, v1

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public addSourceUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->computeSavedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_sourceForUri:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSpelling(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_misspelledNames:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->crunchName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allowPartial()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_allowPartial:Z

    return p0
.end method

.method public annotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaAnnotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_annotations:Ljava/util/List;

    return-object p0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public computeSavedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public findAttributeGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroup(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findAttributeType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeTypes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findDocumentType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_documentTypes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findGlobalAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalAttributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findGlobalElement(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalElements:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findIdConstraint(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    return-object p0
.end method

.method public findModelGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroup(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public findRedefinedAttributeGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;
    .locals 1

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroup(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    :cond_1
    return-object p2
.end method

.method public findRedefinedGlobalType(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_1
    return-object p2
.end method

.method public findRedefinedModelGroup(Ljavax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;
    .locals 1

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->compatName(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroup(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    :cond_1
    return-object p2
.end method

.method public findSpelling(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_misspelledNames:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->crunchName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaComponent;

    return-object p0
.end method

.method public finishProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_processingGroups:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBindingConfig()Lorg/apache/xmlbeans/BindingConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    return-object p0
.end method

.method public getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p0
.end method

.method public getContainerMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_containers:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProcessing()[Lorg/apache/xmlbeans/SchemaComponent;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_processingGroups:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaComponent;

    return-object p0
.end method

.method public getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_entityResolver:Lorg/xml/sax/EntityResolver;

    return-object p0
.end method

.method public getErrorListener()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    return-object p0
.end method

.method public getJavaPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/BindingConfig;->lookupPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJavaSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/BindingConfig;->lookupSuffixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJavaname(Ljavax/xml/namespace/QName;I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/BindingConfig;->lookupJavanameForQName(Ljavax/xml/namespace/QName;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_namespaces:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPackageOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/BindingConfig;->lookupPackageForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecovered()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    return p0
.end method

.method public getS4SLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_s4sloader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object p0
.end method

.method public getSchemasDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_schemasDir:Ljava/io/File;

    return-object p0
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalAttributes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object p0
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalElements:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object p0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_globalTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public idConstraints()[Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_idConstraints:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    return-object p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initFromTypeSystem(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->containers()[Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->addContainer(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isFileProcessed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->isFileRepresented(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isProcessing(Lorg/apache/xmlbeans/SchemaComponent;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_processingGroups:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public linkerDefinesNamespace(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->isNamespaceDefined(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_modelGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method public noAnn()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noAnn:Z

    return p0
.end method

.method public noPvr()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noPvr:Z

    return p0
.end method

.method public noUpa()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noUpa:Z

    return p0
.end method

.method public notFoundError(Ljavax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p4, :cond_0

    iget v5, v0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    :cond_0
    const-string v5, "model group"

    const-string v6, "attribute group"

    const-string v7, "attribute"

    const-string v8, "element"

    const-string v9, "type"

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v13, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v11, :cond_1

    const-string v1, "definition"

    goto :goto_0

    :cond_1
    move-object v1, v5

    goto :goto_0

    :cond_2
    const-string v1, "identity constraint"

    goto :goto_0

    :cond_3
    move-object v1, v6

    goto :goto_0

    :cond_4
    move-object v1, v7

    goto :goto_0

    :cond_5
    move-object v1, v8

    goto :goto_0

    :cond_6
    move-object v1, v9

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->findSpelling(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v14}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentType()I

    move-result v10

    if-eqz v10, :cond_b

    if-eq v10, v4, :cond_a

    if-eq v10, v13, :cond_9

    if-eq v10, v12, :cond_8

    if-eq v10, v11, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    move-object v6, v5

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    invoke-interface {v14}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v7

    goto :goto_1

    :cond_a
    invoke-interface {v14}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v8

    goto :goto_1

    :cond_b
    invoke-interface {v14}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v9

    :goto_1
    if-eqz v5, :cond_c

    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_c
    move-object/from16 v7, p1

    invoke-virtual {v15, v7}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v15}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v15

    move-object/from16 v15, v16

    goto :goto_2

    :cond_d
    move-object v15, v6

    move-object v6, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_e
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_f

    const-string v4, "src-resolve"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_4

    :cond_f
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v3, v7, v4

    const/4 v1, 0x2

    aput-object v15, v7, v1

    if-nez v5, :cond_10

    move v1, v8

    goto :goto_3

    :cond_10
    move v1, v4

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v13

    aput-object v5, v7, v12

    if-nez v6, :cond_11

    move v4, v8

    :cond_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v7, v3

    aput-object v6, v7, v11

    const-string v1, "src-resolve.a"

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_4
    return-void
.end method

.method public recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_recoveredErrors:I

    return-void
.end method

.method public redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedAttributeGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method public redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedGlobalTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_redefinedModelGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method public registerContribution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->registerContribution(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerDependency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->registerDependency(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public relativize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBaseUri(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_baseURI:Ljava/net/URI;

    return-void
.end method

.method public setBindingConfig(Lorg/apache/xmlbeans/BindingConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_config:Lorg/apache/xmlbeans/BindingConfig;

    return-void
.end method

.method public setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_dependencies:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-void
.end method

.method public setErrorListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    return-void
.end method

.method public setGivenTypeSystemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_givenStsName:Ljava/lang/String;

    return-void
.end method

.method public setImportingTypeLoader(Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_importingLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-void
.end method

.method public setOptions(Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompilePartialTypesystem()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_allowPartial:Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getCompileSubstituteNames()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_compatMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoUpaRule()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "true"

    if-nez v0, :cond_2

    const-string v0, "xmlbean.uniqueparticleattribution"

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noUpa:Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoPvrRule()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "xmlbean.particlerestriction"

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noPvr:Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileNoAnnotations()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "xmlbean.schemaannotations"

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_noAnn:Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isCompileDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "xmlbean.downloadurls"

    const-string v4, "false"

    invoke-static {v0, v4}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_doingDownloads:Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_entityResolver:Lorg/xml/sax/EntityResolver;

    if-nez v0, :cond_9

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->getGlobalEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_entityResolver:Lorg/xml/sax/EntityResolver;

    :cond_9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_doingDownloads:Z

    :cond_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getCompileMdefNamespaces()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    const-string v0, "##local"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    const-string v0, "##any"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefNamespaces:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_mdefAll:Z

    :cond_c
    return-void
.end method

.method public setSchemasDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_schemasDir:Ljava/io/File;

    return-void
.end method

.method public setTargetSchemaTypeSystem(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_target:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    return-void
.end method

.method public shouldDownloadURI(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_doingDownloads:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "jar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "zip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "file"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->shouldDownloadURI(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public sourceCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_sourceForUri:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_sourceForUri:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public startProcessing(Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_processingGroups:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sts()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_target:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_givenStsName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_digest:[B

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_target:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    return-object v1
.end method

.method public typesByClassname()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_typesByClassname:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public warning(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addWarning(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2

    const-string v0, "reserved-type-name"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMLSchema.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscState;->_errorListener:Ljava/util/Collection;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addWarning(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method
