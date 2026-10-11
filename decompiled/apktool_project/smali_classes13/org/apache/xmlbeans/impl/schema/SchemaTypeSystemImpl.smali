.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DATA_BABE:I = -0x25854542

.field private static final EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

.field private static final EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

.field private static final EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

.field private static final EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

.field private static final EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

.field private static final EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

.field private static final EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field public static final FIELD_GLOBAL:I = 0x1

.field public static final FIELD_LOCALATTR:I = 0x2

.field public static final FIELD_LOCALELT:I = 0x3

.field public static final FIELD_NONE:I = 0x0

.field public static final FILETYPE_SCHEMAATTRIBUTE:I = 0x4

.field public static final FILETYPE_SCHEMAATTRIBUTEGROUP:I = 0x7

.field public static final FILETYPE_SCHEMAELEMENT:I = 0x3

.field public static final FILETYPE_SCHEMAIDENTITYCONSTRAINT:I = 0x8

.field public static final FILETYPE_SCHEMAINDEX:I = 0x1

.field public static final FILETYPE_SCHEMAMODELGROUP:I = 0x6

.field public static final FILETYPE_SCHEMAPOINTER:I = 0x5

.field public static final FILETYPE_SCHEMATYPE:I = 0x2

.field static final FLAG_ABSTRACT:I = 0x40000

.field static final FLAG_ATTRIBUTE_TYPE:I = 0x80000

.field static final FLAG_BLOCK_EXT:I = 0x1000

.field static final FLAG_BLOCK_REST:I = 0x2000

.field static final FLAG_BOUNDED:I = 0x8

.field static final FLAG_COMPILED:I = 0x800

.field static final FLAG_DOCUMENT_TYPE:I = 0x2

.field static final FLAG_FINAL_EXT:I = 0x4000

.field static final FLAG_FINAL_LIST:I = 0x20000

.field static final FLAG_FINAL_REST:I = 0x8000

.field static final FLAG_FINAL_UNION:I = 0x10000

.field static final FLAG_FINITE:I = 0x10

.field static final FLAG_HAS_PATTERN:I = 0x100

.field static final FLAG_NUMERIC:I = 0x20

.field static final FLAG_ORDERED:I = 0x4

.field static final FLAG_ORDER_SENSITIVE:I = 0x200

.field public static final FLAG_PART_ABSTRACT:I = 0x80

.field public static final FLAG_PART_BLOCKEXT:I = 0x10

.field public static final FLAG_PART_BLOCKREST:I = 0x20

.field public static final FLAG_PART_BLOCKSUBST:I = 0x40

.field public static final FLAG_PART_FINALEXT:I = 0x100

.field public static final FLAG_PART_FINALREST:I = 0x200

.field public static final FLAG_PART_FIXED:I = 0x4

.field public static final FLAG_PART_NILLABLE:I = 0x8

.field public static final FLAG_PART_SKIPPABLE:I = 0x1

.field public static final FLAG_PROP_ISATTR:I = 0x1

.field public static final FLAG_PROP_JAVAARRAY:I = 0x8

.field public static final FLAG_PROP_JAVAOPTIONAL:I = 0x4

.field public static final FLAG_PROP_JAVASINGLETON:I = 0x2

.field static final FLAG_SIMPLE_TYPE:I = 0x1

.field static final FLAG_STRINGENUM:I = 0x40

.field static final FLAG_TOTAL_ORDER:I = 0x400

.field static final FLAG_UNION_OF_LISTS:I = 0x80

.field public static final MAJOR_VERSION:I = 0x2

.field public static METADATA_PACKAGE_GEN:Ljava/lang/String; = null

.field public static final MINOR_VERSION:I = 0x18

.field public static final RELEASE_NUMBER:I

.field static final SINGLE_ZERO_BYTE:[B

.field private static final _mask:[B

.field private static _random:Ljava/util/Random;

.field private static final packPat:Ljava/util/regex/Pattern;


# instance fields
.field private _allNonGroupHandlesResolved:Z

.field private _annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private _attributeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _attributeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _classloader:Ljava/lang/ClassLoader;

.field private _containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            ">;"
        }
    .end annotation
.end field

.field private _deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

.field private _documentTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _filer:Lorg/apache/xmlbeans/Filer;

.field private _globalAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _globalElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _globalTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _identityConstraints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _incomplete:Z

.field _linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

.field private _modelGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private final _name:Ljava/lang/String;

.field private _namespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedAttributeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedGlobalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private _redefinedModelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field

.field private final _resolvedHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;"
        }
    .end annotation
.end field

.field private _resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

.field private _typeRefsByClassname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(.+)(\\.[^.]+){2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->packPat:Ljava/util/regex/Pattern;

    const-string v0, "org/apache/xmlbeans/metadata"

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->SINGLE_ZERO_BYTE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    .line 7
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 10
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Loading type system {}"

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    .line 12
    iput-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 13
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;

    invoke-direct {v3, v2}, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    .line 14
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "Finished loading type system {}"

    invoke-interface {p0, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 16
    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 17
    throw p0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    .line 24
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 27
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Loading type system {}"

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v2, p1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 30
    new-instance p1, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    invoke-direct {p1, v2}, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    .line 31
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Finished loading type system {}"

    invoke-interface {p0, p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 33
    sget-object p1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    .line 54
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 55
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nextBytes([B)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".system."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    .line 41
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    .line 42
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 44
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    .line 45
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 47
    throw p0
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/SchemaComponent$Ref;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$refHelper$2(Lorg/apache/xmlbeans/SchemaComponent$Ref;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addContainer(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assertContainersHelper(Ljava/util/List;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;>;)V"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 6
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/x4m;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/x4m;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/dyo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/dyo;-><init>()V

    .line 7
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-void
.end method

.method private assertContainersHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;+",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    if-nez p3, :cond_0

    new-instance p3, Lcom/sunia/HTREnginev2/q5m;

    invoke-direct {p3}, Lcom/sunia/HTREnginev2/q5m;-><init>()V

    :cond_0
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/r5m;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/r5m;-><init>()V

    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/s5m;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/s5m;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/t5m;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/t5m;-><init>()V

    new-instance p2, Lcom/sunia/HTREnginev2/u5m;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/u5m;-><init>()V

    .line 4
    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-void
.end method

.method private assertContainersSynchronized()V
    .locals 0

    return-void
.end method

.method public static synthetic b(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$documentTypes$5(I)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method private static buildAttributeTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    .line 6
    check-cast v1, Lorg/apache/xmlbeans/SchemaType;

    .line 7
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/i5m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/i5m;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/g5m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g5m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/i5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/i5m;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/p5m;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/p5m;-><init>()V

    new-instance v3, Lcom/sunia/HTREnginev2/wwd;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/wwd;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/b;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/b;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/e;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/e;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/f;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/g;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/h;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/i;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/j;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/k;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/k;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/l;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/l;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    new-instance p2, Lorg/apache/xmlbeans/impl/schema/m;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/schema/m;-><init>()V

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    const-string p2, ""

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lorg/apache/xmlbeans/impl/schema/c;

    invoke-direct {p3, p2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/d;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/schema/d;-><init>()V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private buildContainersHelper(Ljava/util/List;Ljava/util/List;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">(",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildContainersHelper(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/apache/xmlbeans/impl/schema/SchemaContainer;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/o5m;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/o5m;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private static buildDocumentMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/xmlbeans/SchemaComponent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    .line 4
    check-cast v1, Lorg/apache/xmlbeans/SchemaType;

    .line 5
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/xmlbeans/SchemaType;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaType;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static synthetic c(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$attributeTypes$6(I)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x25854542

    if-eq p0, v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_1
    const/16 p0, 0x18

    if-le v2, p0, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :cond_2
    const/16 p0, 0x12

    if-lt v2, p0, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :cond_4
    :try_start_7
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    const-string v2, "pointer"

    const-string v3, "unk"

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->readFrom(Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->stringForCode(I)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    return-object v0
.end method

.method public static synthetic d(I)[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$globalAttributes$8(I)[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(I)[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$identityConstraints$13(I)[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p0

    return-object p0
.end method

.method private fixupContainers()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "TypeSystemHolder"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "typeSystem"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static synthetic g(Lorg/apache/xmlbeans/SchemaComponent$Ref;Lorg/apache/xmlbeans/SchemaComponent$Ref;)Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$buildComponentRefMap$0(Lorg/apache/xmlbeans/SchemaComponent$Ref;Lorg/apache/xmlbeans/SchemaComponent$Ref;)Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$attributeGroups$11(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p0

    return-object p0
.end method

.method private initFromHeader()V
    .locals 7

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Reading unresolved handles for type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v2

    const-string v3, "index"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->readHandlePool(Lorg/apache/xmlbeans/impl/schema/XsbReader;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readClassnameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readNamespaces()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v4, v5}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->atLeast(III)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    :cond_0
    const/16 v4, 0x13

    invoke-virtual {v1, v6, v4, v5}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->atLeast(III)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readAnnotations()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    :cond_1
    invoke-direct {p0, v0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readEnd()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->readEnd()V

    :cond_2
    throw p0
.end method

.method public static synthetic j(I)[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$globalElements$7(I)[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$redefinedGlobalTypes$4(I)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$redefinedAttributeGroups$12(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$attributeGroups$11(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method private static synthetic lambda$attributeTypes$6(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method private static synthetic lambda$buildComponentRefMap$0(Lorg/apache/xmlbeans/SchemaComponent$Ref;Lorg/apache/xmlbeans/SchemaComponent$Ref;)Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 0

    return-object p1
.end method

.method private synthetic lambda$buildContainersHelper$1(Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent$Ref;)V
    .locals 0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$documentTypes$5(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method private static synthetic lambda$globalAttributes$8(I)[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object p0
.end method

.method private static synthetic lambda$globalElements$7(I)[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object p0
.end method

.method private static synthetic lambda$globalTypes$3(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method private static synthetic lambda$identityConstraints$13(I)[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    return-object p0
.end method

.method private static synthetic lambda$modelGroups$9(I)[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method private static synthetic lambda$redefinedAttributeGroups$12(I)[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method private static synthetic lambda$redefinedGlobalTypes$4(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method private static synthetic lambda$redefinedModelGroups$10(I)[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 0

    new-array p0, p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method private static synthetic lambda$refHelper$2(Lorg/apache/xmlbeans/SchemaComponent$Ref;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic m(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent$Ref;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$buildContainersHelper$1(Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent$Ref;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static nameToPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static declared-synchronized nextBytes([B)V
    .locals 9

    const-class v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v2, 0x0

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    new-instance v3, Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;

    invoke-direct {v3, v1}, Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-class v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "user.name"

    aput-object v6, v5, v2

    const-string v6, "user.dir"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "user.timezone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "user.country"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "java.class.path"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const-string v6, "java.home"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "java.vendor"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const-string v6, "java.version"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string v6, "os.version"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v5, v6

    invoke-static {v7}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move v4, v2

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v6, v5

    rem-int v6, v4, v6

    aget-byte v7, v5, v6

    mul-int/lit8 v7, v7, 0x15

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    int-to-byte v8, v4

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_4

    :catchall_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_b
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catch_0
    move-exception v1

    :try_start_c
    sget-object v3, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_4
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    :cond_3
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextBytes([B)V

    :goto_5
    array-length v1, p0

    if-ge v2, v1, :cond_4

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v3, v1

    and-int/2addr v3, v2

    aget-byte v4, p0, v2

    aget-byte v1, v1, v3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    monitor-exit v0

    return-void

    :catchall_6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic o(I)[Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$globalTypes$3(I)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(I)[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$modelGroups$9(I)[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(I)[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->lambda$redefinedModelGroups$10(I)[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p0

    return-object p0
.end method

.method private static refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;TU;>;",
            "Ljava/util/function/IntFunction<",
            "[TU;>;[TU;)[TU;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/sunia/HTREnginev2/c5m;

    invoke-direct {p3}, Lcom/sunia/HTREnginev2/c5m;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3
.end method

.method private static refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;TU;>;",
            "Ljava/util/function/IntFunction<",
            "[TU;>;[TU;)[TU;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    :goto_1
    return-object p0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/v1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/v1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/n5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/n5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/x1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/j5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/j5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public containers()[Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/x1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/d5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/d5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public findAttributeGroupRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    return-object p0
.end method

.method public findAttributeRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    return-object p0
.end method

.method public findAttributeTypeRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p0
.end method

.method public findDocumentTypeRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p0
.end method

.method public findElementRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    return-object p0
.end method

.method public findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-object p0
.end method

.method public findModelGroupRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    return-object p0
.end method

.method public findTypeRef(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p0
.end method

.method public getBasePackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p0
.end method

.method public getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->addContainer(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-object p0
.end method

.method public getLinker()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object p0
.end method

.method public getLoaderStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataPath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->packPat:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    return-object p0
.end method

.method public getSaverStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/Filer;->createBinaryFile(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    move-object v5, p1

    new-instance p1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/src"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getTypePool()Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    return-object p0
.end method

.method public getTypeRefsByClassname()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/xmlbeans/SchemaComponent$Ref;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    return-object p0
.end method

.method public final getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 0

    return-object p0
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/y1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/l5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/l5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object p0
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/z1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/y4m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/y4m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object p0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/x1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/b5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/b5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/w1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/w1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/a5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/a5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    return-object p0
.end method

.method public isIncomplete()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return p0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadFromStscState(Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->typesByClassname()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->idConstraints()[Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->annotations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainerMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->fixupContainers()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->assertContainersSynchronized()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V

    return-void
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/u1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/u1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/e5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/e5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Map;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method public redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/v1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/v1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/k5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/k5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object p0
.end method

.method public redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/x1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/z4m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/z4m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/u1m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/u1m;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/m5m;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/m5m;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->refHelper(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/IntFunction;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object p0
.end method

.method public resolve()V
    .locals 4

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolve called type system {}"

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Resolving all handles for type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Finished resolving type system {}"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_7

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    const v2, 0xffff

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->getActualFiletype()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving id constraint for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingIdentityConstraint()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal handle type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving attribute group for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingAttributeGroup()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving model group for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingModelGroup()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving attribute for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingAttribute()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving element for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingElement()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atTrace()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Resolving type for handle {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->finishLoadingType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaComponent;

    move-object v1, p0

    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public save(Lorg/apache/xmlbeans/Filer;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->startWriteMode()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIndex()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointers()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Incomplete SchemaTypeSystems cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    const/4 p0, 0x7

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    move-object p0, p1

    check-cast p0, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    const/16 p0, 0x8

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveIndex()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    const-string v1, "index"

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeIndexData()V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeIndexData()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void
.end method

.method public saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    const/4 p0, 0x6

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public savePointerFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void
.end method

.method public savePointers()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/modelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/attributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/identityconstraint/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/namespace/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/javaname/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedmodelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedattributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getMetadataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/redefinedtype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    return-void
.end method

.method public savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "xmlns"

    invoke-direct {v2, v0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 7

    new-instance v6, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/util/FilerImpl;-><init>(Ljava/io/File;Ljava/io/File;Lorg/apache/xmlbeans/impl/repackage/Repackager;ZZ)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->save(Lorg/apache/xmlbeans/Filer;)V

    return-void
.end method

.method public saveType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XsbReader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 p0, 0x2

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeEnd()V

    return-void
.end method

.method public saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-void
.end method

.method public setIncomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return-void
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
