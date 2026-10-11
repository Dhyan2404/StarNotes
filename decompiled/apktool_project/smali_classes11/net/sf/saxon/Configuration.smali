.class public Lnet/sf/saxon/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/SourceResolver;
.implements Lnet/sf/saxon/om/NotationSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/Configuration$LicenseFeature;,
        Lnet/sf/saxon/Configuration$ApiProvider;
    }
.end annotation


# static fields
.field public static final XML10:I = 0xa

.field public static final XML11:I = 0xb

.field public static final XSD10:I = 0xa

.field public static final XSD11:I = 0xb

.field protected static booleanFeatures:Lnet/sf/saxon/z/IntSet;

.field public static final c0:Lorg/xml/sax/ext/LexicalHandler;

.field public static final synthetic d0:Z

.field protected static stringFeatures:Lnet/sf/saxon/z/IntSet;


# instance fields
.field public A:Lnet/sf/saxon/lib/SerializerFactory;

.field public volatile B:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation
.end field

.field public volatile C:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/xml/sax/XMLReader;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public transient E:Lnet/sf/saxon/lib/SourceResolver;

.field public transient F:Lnet/sf/saxon/lib/Logger;

.field public G:Lnet/sf/saxon/lib/ModuleURIResolver;

.field public H:Ljava/lang/String;

.field public I:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

.field public transient J:Lnet/sf/saxon/expr/XPathContext;

.field public K:Lnet/sf/saxon/lib/ConversionRules;

.field public transient L:Lnet/sf/saxon/lib/TraceListener;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public final P:Lnet/sf/saxon/expr/parser/TypeChecker;

.field public final Q:Lnet/sf/saxon/expr/compat/TypeChecker10;

.field public transient R:Lnet/sf/saxon/lib/ResourceResolver;

.field public S:Lnet/sf/saxon/lib/ProtocolRestrictor;

.field public T:I

.field public U:I

.field public V:I

.field public W:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/ResourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/FunctionAnnotationHandler;",
            ">;"
        }
    .end annotation
.end field

.field public transient a:Lnet/sf/saxon/Configuration$ApiProvider;

.field public a0:I

.field public transient b:Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

.field public final b0:Lnet/sf/saxon/tree/tiny/TreeStatistics;

.field protected builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

.field protected byteCodeThreshold:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/StringCollator;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lnet/sf/saxon/lib/CollationURIResolver;

.field protected transient defaultStaticQueryContext:Lnet/sf/saxon/query/StaticQueryContext;

.field protected defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/lib/CollectionFinder;

.field public h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

.field public i:Ljava/lang/String;

.field public final j:Lnet/sf/saxon/lib/ParseOptions;

.field public k:Lnet/sf/saxon/lib/StaticQueryContextFactory;

.field public l:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/Configuration;",
            "+",
            "Lnet/sf/saxon/lib/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

.field public transient o:Lnet/sf/saxon/expr/instruct/Debugger;

.field protected optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

.field protected optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/util/Properties;

.field public transient s:Lnet/sf/saxon/lib/IDynamicLoader;

.field protected staticContextForSystemFunctions:Lnet/sf/saxon/sxpath/IndependentContext;

.field public final t:Lnet/sf/saxon/z/IntSet;

.field protected transient typeHierarchy:Lnet/sf/saxon/type/TypeHierarchy;

.field public final u:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/lib/ExternalObjectModel;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lnet/sf/saxon/om/DocumentPool;

.field public final x:Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

.field protected xsdVersion:I

.field public transient y:Lnet/sf/saxon/lib/LocalizerFactory;

.field public z:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/Configuration;->stringFeatures:Lnet/sf/saxon/z/IntSet;

    new-instance v0, Lorg/xml/sax/ext/DefaultHandler2;

    invoke-direct {v0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    sput-object v0, Lnet/sf/saxon/Configuration;->c0:Lorg/xml/sax/ext/LexicalHandler;

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    sget-object v0, Lnet/sf/saxon/Configuration;->stringFeatures:Lnet/sf/saxon/z/IntSet;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->a:Lnet/sf/saxon/Configuration$ApiProvider;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->c:Ljava/util/Map;

    new-instance v1, Lnet/sf/saxon/lib/StandardCollationURIResolver;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardCollationURIResolver;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->d:Lnet/sf/saxon/lib/CollationURIResolver;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->f:Ljava/util/Map;

    new-instance v1, Lnet/sf/saxon/lib/StandardEnvironmentVariableResolver;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardEnvironmentVariableResolver;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->i:Ljava/lang/String;

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    new-instance v1, Lnet/sf/saxon/lib/StaticQueryContextFactory;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StaticQueryContextFactory;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->k:Lnet/sf/saxon/lib/StaticQueryContextFactory;

    sget-object v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->m:Ljava/lang/String;

    new-instance v1, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    invoke-direct {v1}, Lnet/sf/saxon/tree/util/DocumentNumberAllocator;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->o:Lnet/sf/saxon/expr/instruct/Debugger;

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v1}, Lnet/sf/saxon/Platform;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->p:Ljava/lang/String;

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v1}, Lnet/sf/saxon/Platform;->getDefaultCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->q:Ljava/lang/String;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->r:Ljava/util/Properties;

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v1}, Lnet/sf/saxon/Platform;->getDefaultDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    new-instance v1, Lnet/sf/saxon/z/IntHashSet;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    new-instance v1, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v1}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->u:Lnet/sf/saxon/z/IntHashMap;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/om/DocumentPool;

    invoke-direct {v1}, Lnet/sf/saxon/om/DocumentPool;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->w:Lnet/sf/saxon/om/DocumentPool;

    new-instance v1, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    invoke-direct {v1}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->x:Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    new-instance v1, Lnet/sf/saxon/om/NamePool;

    invoke-direct {v1}, Lnet/sf/saxon/om/NamePool;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->z:Lnet/sf/saxon/om/NamePool;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->J:Lnet/sf/saxon/expr/XPathContext;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->L:Lnet/sf/saxon/lib/TraceListener;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->N:Ljava/lang/String;

    const-string v0, "S"

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->O:Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/expr/parser/TypeChecker;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/TypeChecker;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->P:Lnet/sf/saxon/expr/parser/TypeChecker;

    new-instance v0, Lnet/sf/saxon/expr/compat/TypeChecker10;

    invoke-direct {v0}, Lnet/sf/saxon/expr/compat/TypeChecker10;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->Q:Lnet/sf/saxon/expr/compat/TypeChecker10;

    new-instance v0, Lnet/sf/saxon/lib/ProtocolRestrictor;

    const-string v1, "all"

    invoke-direct {v0, v1}, Lnet/sf/saxon/lib/ProtocolRestrictor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->S:Lnet/sf/saxon/lib/ProtocolRestrictor;

    const/16 v0, 0xb

    iput v0, p0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    iput v2, p0, Lnet/sf/saxon/Configuration;->T:I

    const/16 v0, 0x14

    iput v0, p0, Lnet/sf/saxon/Configuration;->U:I

    const/16 v0, 0x1f

    iput v0, p0, Lnet/sf/saxon/Configuration;->V:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->X:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->Y:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->Z:Ljava/util/Map;

    const/16 v0, 0x64

    iput v0, p0, Lnet/sf/saxon/Configuration;->byteCodeThreshold:I

    const v0, 0x989680

    iput v0, p0, Lnet/sf/saxon/Configuration;->a0:I

    new-instance v0, Lnet/sf/saxon/tree/tiny/TreeStatistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/TreeStatistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->b0:Lnet/sf/saxon/tree/tiny/TreeStatistics;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->init()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/Configuration;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Configuration;->g(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Configuration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Configuration;->h(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Configuration;->j(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static synthetic g(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/serialize/charcode/XMLCharacterData;->isValid10(I)Z

    move-result p0

    return p0
.end method

.method public static getConfiguration(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/Configuration;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/serialize/charcode/XMLCharacterData;->isValid11(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static instantiateConfiguration(Ljava/lang/String;Ljava/lang/ClassLoader;)Lnet/sf/saxon/Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Failed to getContextClassLoader() - continuing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public static isAssertionsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic j(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ErrorReporter;
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/StandardErrorReporter;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardErrorReporter;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/StandardErrorReporter;->setLogger(Lnet/sf/saxon/lib/Logger;)V

    return-object v0
.end method

.method public static k()Lorg/xml/sax/XMLReader;
    .locals 1

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0}, Lnet/sf/saxon/Platform;->loadParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public static makeLicensedConfiguration(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/sf/saxon/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "com.saxonica.config.ProfessionalConfiguration"

    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lnet/sf/saxon/Configuration;->instantiateConfiguration(Ljava/lang/String;Ljava/lang/ClassLoader;)Lnet/sf/saxon/Configuration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newConfiguration()Lnet/sf/saxon/Configuration;
    .locals 3

    const-class v0, Lnet/sf/saxon/Configuration;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot instantiate a Configuration"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->readConfigurationFile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static readConfiguration(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/Configuration;->readConfigurationFile(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be \'true\' or \'false\' (or on|off, yes|no, 1|0)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a boolean (or a string representing a boolean)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    .locals 0

    return-void
.end method

.method public addSchemaForBuiltInNamespace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addSchemaSource(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Configuration;->addSchemaSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public addSchemaSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    return-void
.end method

.method public bindSaxonExtensionFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The extension function saxon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires Saxon-PE or higher"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getContainedSource()Ljavax/xml/transform/Source;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    iget-object v1, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1, p2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    .line 9
    invoke-virtual {p0, p1, p0}, Lnet/sf/saxon/Configuration;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 10
    :try_start_1
    instance-of p1, p2, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p1, :cond_0

    .line 11
    move-object p1, p2

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    .line 12
    :cond_0
    invoke-virtual {v1, p0}, Lnet/sf/saxon/lib/ParseOptions;->applyDefaults(Lnet/sf/saxon/Configuration;)V

    .line 13
    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result v0

    .line 14
    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    .line 15
    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumbering()Z

    move-result v2

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V

    .line 18
    invoke-virtual {p1, v3}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    .line 20
    invoke-virtual {p1, v2}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    .line 21
    invoke-virtual {p1, v3}, Lnet/sf/saxon/event/Builder;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 22
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    .line 23
    invoke-static {p2, p1, v1}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    .line 24
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 26
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->reset()V

    .line 27
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p2}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_1
    return-object p0

    .line 29
    :cond_2
    :try_start_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Source object represents a node other than a document node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_0

    .line 30
    :cond_3
    :try_start_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_4

    .line 31
    invoke-static {p1}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    .line 32
    :cond_4
    throw p0

    .line 33
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkLicensedFeature(ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/LicenseException;
        }
    .end annotation

    const/16 p3, 0x8

    if-ne p1, p3, :cond_0

    const-string v0, "PE"

    goto :goto_0

    :cond_0
    const-string v0, "EE"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested feature ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") requires Saxon-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/Version;->softwareEdition:Ljava/lang/String;

    const-string v1, "HE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0}, Lnet/sf/saxon/Platform;->isDotNet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Saxon.Eej.config"

    goto :goto_1

    :cond_1
    const-string v0, "com.saxonica.config"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". You are using Saxon-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lnet/sf/saxon/Version;->softwareEdition:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " software, but the Configuration is an instance of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; to use this feature you need to create an instance of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    if-ne p1, p3, :cond_2

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ProfessionalConfiguration"

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".EnterpriseConfiguration"

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/LicenseException;

    const/4 p1, 0x6

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/trans/LicenseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public checkStrictStreamability(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/type/SchemaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    return-void
.end method

.method public clearSchemaCache()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->close()V

    :cond_0
    return-void
.end method

.method public compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/regex/RegularExpression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lnet/sf/saxon/Platform;->compileRegularExpression(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p0

    return-object p0
.end method

.method public createByteCodeReport(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createValidityReporter()Lnet/sf/saxon/lib/InvalidityReportGenerator;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Schema validation requires Saxon-EE"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableLicensing()V
    .locals 0

    return-void
.end method

.method public displayLicenseMessage()V
    .locals 0

    return-void
.end method

.method public exportComponents(Lnet/sf/saxon/event/Receiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    return-void
.end method

.method public externalObjectAsMap(Lnet/sf/saxon/value/ObjectValue;Ljava/lang/String;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/value/ObjectValue<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/sf/saxon/ma/map/MapItem;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    return-object p1
.end method

.method public getAttributeDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/lib/Feature<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    iget p1, p1, Lnet/sf/saxon/lib/Feature;->code:I

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-static {}, Lnet/sf/saxon/functions/MathFunctionSet;->getInstance()Lnet/sf/saxon/functions/MathFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-static {}, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->builtInExtensionLibraryList:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-object p0
.end method

.method public getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->b:Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->b:Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->b:Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    return-object p0
.end method

.method public getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-interface {v0, p1, p0, v1}, Lnet/sf/saxon/lib/IDynamicLoader;->getClass(Ljava/lang/String;Lnet/sf/saxon/lib/Logger;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;->getInstance()Lnet/sf/saxon/expr/sort/HTML5CaseBlindCollator;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "http://saxon.sf.net/collation/alphaNumeric?base="

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;

    const/16 v1, 0x30

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/StringCollator;

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getCollationURIResolver()Lnet/sf/saxon/lib/CollationURIResolver;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lnet/sf/saxon/lib/CollationURIResolver;->resolve(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    :cond_3
    return-object v0

    .line 10
    :cond_4
    :goto_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p0

    return-object p0
.end method

.method public getCollation(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 15
    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collation name is not a valid URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (base = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FOCH0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getCollation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 18
    :try_start_0
    invoke-static {p1, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 20
    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown collation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collation name is not a valid URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (base = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getCollationURIResolver()Lnet/sf/saxon/lib/CollationURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->d:Lnet/sf/saxon/lib/CollationURIResolver;

    return-object p0
.end method

.method public getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->g:Lnet/sf/saxon/lib/CollectionFinder;

    return-object p0
.end method

.method public getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->getData(Ljava/lang/String;)Lnet/sf/saxon/lib/FeatureData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getFeature(Lnet/sf/saxon/lib/FeatureData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown configuration property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sf/saxon/lib/Feature<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    iget p1, p1, Lnet/sf/saxon/lib/Feature;->code:I

    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->getData(I)Lnet/sf/saxon/lib/FeatureData;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getFeature(Lnet/sf/saxon/lib/FeatureData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConversionContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->J:Lnet/sf/saxon/expr/XPathContext;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->J:Lnet/sf/saxon/expr/XPathContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->J:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/lib/ConversionRules;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ConversionRules;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setTypeHierarchy(Lnet/sf/saxon/type/TypeHierarchy;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/ConversionRules;->setNotationSet(Lnet/sf/saxon/om/NotationSet;)V

    iget v1, p0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setStringToDoubleConverter(Lnet/sf/saxon/type/StringToDouble;)V

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setURIChecker(Lnet/sf/saxon/lib/URIChecker;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setStringToDoubleConverter(Lnet/sf/saxon/type/StringToDouble;)V

    :goto_0
    iget v1, p0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setAllowYearZero(Z)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-object v0
.end method

.method public getCountDown()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/Configuration;->byteCodeThreshold:I

    return p0
.end method

.method public getDebugger()Lnet/sf/saxon/expr/instruct/Debugger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->o:Lnet/sf/saxon/expr/instruct/Debugger;

    return-object p0
.end method

.method public getDeclaredSchemaParameters()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/expr/instruct/GlobalParam;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultCollection()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->DEFAULT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-object p0
.end method

.method public getDefaultCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultRegexEngine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->O:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultSerializationProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->r:Ljava/util/Properties;

    return-object p0
.end method

.method public getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->defaultStaticQueryContext:Lnet/sf/saxon/query/StaticQueryContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->makeStaticQueryContext(Z)Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->defaultStaticQueryContext:Lnet/sf/saxon/query/StaticQueryContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultStaticQueryContext:Lnet/sf/saxon/query/StaticQueryContext;

    return-object p0
.end method

.method public getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    return-object p0
.end method

.method public getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    return-object p0
.end method

.method public getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    return-object p1
.end method

.method public getDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    return-object p0
.end method

.method public getEditionCode()Ljava/lang/String;
    .locals 0

    const-string p0, "HE"

    return-object p0
.end method

.method public getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElementDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElementValidator(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public getExtensionsOfType(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/SchemaType;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/sf/saxon/type/SchemaType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExternalObjectModel(Ljava/lang/Class;)Lnet/sf/saxon/lib/ExternalObjectModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/lib/ExternalObjectModel;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/ExternalObjectModel;

    .line 4
    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/ExternalObjectModel;->getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExternalObjectModel(Ljava/lang/String;)Lnet/sf/saxon/lib/ExternalObjectModel;
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/ExternalObjectModel;

    .line 2
    invoke-interface {v0}, Lnet/sf/saxon/lib/ExternalObjectModel;->getIdentifyingURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExternalObjectModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/lib/ExternalObjectModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    return-object p0
.end method

.method public getFeature(Lnet/sf/saxon/lib/FeatureData;)Ljava/lang/Object;
    .locals 6

    iget v0, p1, Lnet/sf/saxon/lib/FeatureData;->code:I

    sget-object v1, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lnet/sf/saxon/Configuration;->stringFeatures:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->u:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    iget-object p0, p1, Lnet/sf/saxon/lib/FeatureData;->defaultValue:Ljava/lang/Object;

    :cond_1
    return-object p0

    :cond_2
    const-string p1, "1.0"

    const-string v1, "1.1"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown configuration property "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->S:Lnet/sf/saxon/lib/ProtocolRestrictor;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ProtocolRestrictor;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget p0, p0, Lnet/sf/saxon/Configuration;->V:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget p0, p0, Lnet/sf/saxon/Configuration;->U:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget p0, p0, Lnet/sf/saxon/Configuration;->a0:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/16 p0, 0x1e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    return-object v5

    :pswitch_9
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isSchemaAware()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultInitialTemplate()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultInitialMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isAssertionsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget p0, p0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    return-object p1

    :pswitch_f
    const-string p0, "3.1"

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isSchemaAware()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isPreserveNamespaces()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isPreserveBoundarySpace()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isInheritNamespaces()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isEmptyLeast()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getConstructionMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isUpdatingEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result p0

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :pswitch_1c
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isXIncludeAware()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1e
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isValidationWarnings()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1f
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isAddCommentsAfterValidationErrors()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_20
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isUseXsiSchemaLocation()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v5

    :pswitch_22
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTreeModel()I

    move-result p0

    if-eqz p0, :cond_7

    if-eq p0, v4, :cond_6

    const-string p0, "tinyTree"

    return-object p0

    :cond_6
    const-string p0, "tinyTreeCondensed"

    return-object p0

    :cond_7
    const-string p0, "linkedTree"

    return-object p0

    :pswitch_25
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTreeModel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_26
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->N:Ljava/lang/String;

    return-object p0

    :pswitch_27
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    return-object p0

    :pswitch_28
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->L:Lnet/sf/saxon/lib/TraceListener;

    return-object p0

    :pswitch_29
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2a
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getStyleParserClass()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2b
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object p1

    if-ne p0, p1, :cond_8

    const-string p0, "all"

    return-object p0

    :cond_8
    if-eqz p0, :cond_a

    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object p1

    if-ne p0, p1, :cond_9

    goto :goto_2

    :cond_9
    const-string p0, "none"

    return-object p0

    :cond_a
    :goto_2
    const-string p0, "ignorable"

    return-object p0

    :pswitch_2c
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2d
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSourceParserClass()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2e
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2f
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSchemaValidationMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_31
    const-string p0, "recoverWithWarnings"

    return-object p0

    :pswitch_32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_33
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_34
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    return-object p0

    :pswitch_35
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_36
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0

    :pswitch_37
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_38
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p0

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getMessageEmitterClass()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3a
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isLineNumbering()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3b
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isExpandAttributeDefaults()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3c
    return-object v5

    :pswitch_3d
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    return-object p0

    :pswitch_3f
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_40
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result p0

    if-ne p0, v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_41
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isValidation()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_42
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_43
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_44
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultCollection()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_45
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->e:Ljava/lang/String;

    :pswitch_46
    return-object p0

    :pswitch_47
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getCollationURIResolver()Lnet/sf/saxon/lib/CollationURIResolver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_48
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getCollationURIResolver()Lnet/sf/saxon/lib/CollationURIResolver;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_48
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_46
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusTrackerFactory(Lnet/sf/saxon/expr/instruct/Executable;Z)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/instruct/Executable;",
            "Z)",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/FocusTrackingIterator;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/i9e;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/i9e;-><init>()V

    return-object p0
.end method

.method public getFunctionAnnotationHandler(Ljava/lang/String;)Lnet/sf/saxon/lib/FunctionAnnotationHandler;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->Z:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/FunctionAnnotationHandler;

    return-object p0
.end method

.method public getGlobalDocumentPool()Lnet/sf/saxon/om/DocumentPool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->w:Lnet/sf/saxon/om/DocumentPool;

    return-object p0
.end method

.method public getImportedNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    invoke-interface {v0, p1, p0, v2}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Lnet/sf/saxon/lib/Logger;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->x:Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    return-object p0
.end method

.method public declared-synchronized getJavaExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/type/JavaExternalObjectType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/type/JavaExternalObjectType;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-direct {v0, p1}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getLicenseFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalizerFactory()Lnet/sf/saxon/lib/LocalizerFactory;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->y:Lnet/sf/saxon/lib/LocalizerFactory;

    return-object p0
.end method

.method public getLogger()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public getMediaQueryEvaluator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->W:Ljava/util/Comparator;

    return-object p0
.end method

.method public getMediaTypeForFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->X:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->X:Ljava/util/Map;

    const-string p1, ""

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getMessageEmitterClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getMessageReceiverClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getMultithreadedItemMappingIterator(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->z:Lnet/sf/saxon/om/NamePool;

    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    sget-object v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->intersect(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getParseOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/Configuration$ApiProvider;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->a:Lnet/sf/saxon/Configuration$ApiProvider;

    return-object p0
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saxon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v1}, Lnet/sf/saxon/Platform;->getPlatformSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from Saxonica"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolRestrictor()Lnet/sf/saxon/lib/ProtocolRestrictor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->S:Lnet/sf/saxon/lib/ProtocolRestrictor;

    return-object p0
.end method

.method public getRegisteredCollection(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ResourceCollection;

    return-object p0
.end method

.method public getResourceFactoryForMediaType(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceFactory;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->Y:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ResourceFactory;

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->R:Lnet/sf/saxon/lib/ResourceResolver;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    invoke-direct {v0}, Lnet/sf/saxon/lib/CatalogResourceResolver;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->R:Lnet/sf/saxon/lib/ResourceResolver;

    return-object p0
.end method

.method public getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;
    .locals 0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/BuiltInType;->getSchemaTypeByLocalName(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemaValidationMode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result p0

    return p0
.end method

.method public getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->A:Lnet/sf/saxon/lib/SerializerFactory;

    return-object p0
.end method

.method public getSourceParser()Lorg/xml/sax/XMLReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSourceParserClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSourceParserClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->makeParser(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/Configuration;->k()Lorg/xml/sax/XMLReader;

    move-result-object v0

    :goto_0
    new-instance v1, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;-><init>(Lnet/sf/saxon/lib/ResourceResolver;)V

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lnet/sf/saxon/lib/ChainedEntityResolver;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lnet/sf/saxon/lib/ChainedEntityResolver;-><init>(Lorg/xml/sax/EntityResolver;Lorg/xml/sax/EntityResolver;)V

    move-object v1, v2

    :cond_3
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->l(Lorg/xml/sax/XMLReader;)V

    :cond_4
    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/resource/ActiveSAXSource;->configureParser(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isValidation()Z

    move-result p0

    if-eqz p0, :cond_5

    :try_start_1
    const-string p0, "http://xml.org/sax/features/validation"

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    const-string v0, "The XML parser does not support validation"

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-object v0

    :catch_1
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSourceParserClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->D:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->E:Lnet/sf/saxon/lib/SourceResolver;

    return-object p0
.end method

.method public getStandardModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->G:Lnet/sf/saxon/lib/ModuleURIResolver;

    return-object p0
.end method

.method public declared-synchronized getStyleParser()Lorg/xml/sax/XMLReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getStyleParserClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getStyleParserClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->makeParser(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/Configuration;->k()Lorg/xml/sax/XMLReader;

    move-result-object v0

    :goto_0
    new-instance v1, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/EntityResolverWrappingResourceResolver;-><init>(Lnet/sf/saxon/lib/ResourceResolver;)V

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lnet/sf/saxon/lib/ChainedEntityResolver;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lnet/sf/saxon/lib/ChainedEntityResolver;-><init>(Lorg/xml/sax/EntityResolver;Lorg/xml/sax/EntityResolver;)V

    move-object v1, v2

    :cond_3
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStyleParserClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->H:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemFunction(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/om/Function;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->staticContextForSystemFunctions:Lnet/sf/saxon/sxpath/IndependentContext;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->staticContextForSystemFunctions:Lnet/sf/saxon/sxpath/IndependentContext;

    :cond_0
    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-direct {v1, p0}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v1, p1, p2}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->staticContextForSystemFunctions:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/functions/FunctionLibraryList;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->L:Lnet/sf/saxon/lib/TraceListener;

    return-object p0
.end method

.method public getTraceListenerClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceListenerOutputFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->N:Ljava/lang/String;

    return-object p0
.end method

.method public getTreeModel()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/TreeModel;->getSymbolicValue()I

    move-result p0

    return p0
.end method

.method public getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->b0:Lnet/sf/saxon/tree/tiny/TreeStatistics;

    return-object p0
.end method

.method public getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->Q:Lnet/sf/saxon/expr/compat/TypeChecker10;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->P:Lnet/sf/saxon/expr/parser/TypeChecker;

    return-object p0
.end method

.method public getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->typeHierarchy:Lnet/sf/saxon/type/TypeHierarchy;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/type/TypeHierarchy;

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->typeHierarchy:Lnet/sf/saxon/type/TypeHierarchy;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->typeHierarchy:Lnet/sf/saxon/type/TypeHierarchy;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->I:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-object p0
.end method

.method public getUseWhenFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/Configuration;->T:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/g9e;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/g9e;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/h9e;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/h9e;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getXMLVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/Configuration;->T:I

    return p0
.end method

.method public getXPath30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath30FunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getXPath31FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getXPath40FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath40FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath40FunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getXQueryUpdateFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXSLT30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getXsdVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    return p0
.end method

.method public importComponents(Ljavax/xml/transform/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    return-void
.end method

.method public importLicenseDetails(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 10

    new-instance v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    invoke-direct {v0}, Lnet/sf/saxon/lib/CatalogResourceResolver;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->R:Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0, p0}, Lnet/sf/saxon/Platform;->makeStandardModuleURIResolver(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->G:Lnet/sf/saxon/lib/ModuleURIResolver;

    new-instance v0, Lnet/sf/saxon/lib/SerializerFactory;

    invoke-direct {v0, p0}, Lnet/sf/saxon/lib/SerializerFactory;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->A:Lnet/sf/saxon/lib/SerializerFactory;

    iput-object p0, p0, Lnet/sf/saxon/Configuration;->E:Lnet/sf/saxon/lib/SourceResolver;

    new-instance v0, Lnet/sf/saxon/lib/StandardUnparsedTextResolver;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardUnparsedTextResolver;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->I:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    new-instance v0, Lcom/sunia/HTREnginev2/j9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/j9e;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->W:Ljava/util/Comparator;

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0, p0}, Lnet/sf/saxon/Platform;->initialize(Lnet/sf/saxon/Configuration;)V

    new-instance v0, Lnet/sf/saxon/lib/StandardEntityResolver;

    invoke-direct {v0, p0}, Lnet/sf/saxon/lib/StandardEntityResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v1, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/ParseOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->G:Lnet/sf/saxon/lib/ModuleURIResolver;

    instance-of v1, v0, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    :cond_0
    const-string v0, "http://saxon.sf.net/feature/allow-external-functions"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://saxon.sf.net/feature/disableXslEvaluate"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, v1}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "xml"

    const-string v1, "application/xml"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    const-string v2, "application/html"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "atom"

    const-string v3, "application/atom"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xsl"

    const-string v4, "application/xml+xslt"

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xslt"

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xsd"

    const-string v5, "application/xml+xsd"

    invoke-virtual {p0, v0, v5}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "txt"

    const-string v6, "text/plain"

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MF"

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "class"

    const-string v7, "application/java"

    invoke-virtual {p0, v0, v7}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "json"

    const-string v8, "application/json"

    invoke-virtual {p0, v0, v8}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v9, "application/unknown"

    invoke-virtual {p0, v0, v9}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/resource/XmlResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    const-string v1, "text/xml"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    const-string v1, "text/html"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    invoke-virtual {p0, v4, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    invoke-virtual {p0, v5, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    const-string v1, "application/rdf+xml"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    sget-object v0, Lnet/sf/saxon/resource/UnparsedTextResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    invoke-virtual {p0, v6, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    sget-object v0, Lnet/sf/saxon/resource/BinaryResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    invoke-virtual {p0, v7, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    const-string v1, "application/binary"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    sget-object v0, Lnet/sf/saxon/resource/JSONResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    invoke-virtual {p0, v8, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    sget-object v0, Lnet/sf/saxon/resource/UnknownResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    invoke-virtual {p0, v9, v0}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    new-instance v0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;

    invoke-direct {v0}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->registerFunctionAnnotationHandler(Lnet/sf/saxon/lib/FunctionAnnotationHandler;)V

    return-void
.end method

.method public instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as the value of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a String"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2, p3}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->remove(I)Z

    :goto_0
    return-void
.end method

.method public isCompatible(Lnet/sf/saxon/Configuration;)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->z:Lnet/sf/saxon/om/NamePool;

    iget-object v1, p1, Lnet/sf/saxon/Configuration;->z:Lnet/sf/saxon/om/NamePool;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    iget-object p1, p1, Lnet/sf/saxon/Configuration;->n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompileWithTracing()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/lib/Feature;->COMPILE_WITH_TRACING:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    return p0
.end method

.method public isDeclaredNotation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeferredByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExpandAttributeDefaults()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isExpandAttributeDefaults()Z

    move-result p0

    return p0
.end method

.method public isExtensionElementAvailable(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureAllowedBySecondaryLicense(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGenerateByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isJITEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLicensedFeature(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLineNumbering()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumbering()Z

    move-result p0

    return p0
.end method

.method public isSchemaAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamabilityEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamedNode(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStripsAllWhiteSpace()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTiming()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public isValidation()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isValidationWarnings()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isContinueAfterValidationErrors()Z

    move-result p0

    return p0
.end method

.method public isVersionWarning()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isXIncludeAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAware()Z

    move-result p0

    return p0
.end method

.method public final l(Lorg/xml/sax/XMLReader;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public loadSchema(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lnet/sf/saxon/Configuration;->readSchema(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public makeAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    invoke-direct {p0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;-><init>()V

    return-object p0
.end method

.method public makeClosure(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/lib/Feature;->EAGER_EVALUATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-le p2, p0, :cond_1

    new-instance p0, Lnet/sf/saxon/value/MemoClosure;

    invoke-direct {p0}, Lnet/sf/saxon/value/MemoClosure;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/value/Closure;

    invoke-direct {p0}, Lnet/sf/saxon/value/Closure;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Closure;->setExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/Closure;->setSavedXPathContext(Lnet/sf/saxon/expr/XPathContextMajor;)V

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/value/Closure;->saveContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0
.end method

.method public makeCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/CompilerInfo;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/CompilerInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeCompilerService(Lnet/sf/saxon/s9api/HostLanguage;)Lnet/sf/saxon/expr/parser/ICompilerService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeConfigurationReader()Lnet/sf/saxon/trans/ConfigurationReader;
    .locals 0

    new-instance p0, Lnet/sf/saxon/trans/ConfigurationReader;

    invoke-direct {p0}, Lnet/sf/saxon/trans/ConfigurationReader;-><init>()V

    return-object p0
.end method

.method public makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;-><init>(Lnet/sf/saxon/type/ItemType;Z)V

    return-object p0
.end method

.method public makeDocumentProjector(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;)Lnet/sf/saxon/event/FilterFactory;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Document projection requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeDocumentProjector(Lnet/sf/saxon/query/XQueryExpression;)Lnet/sf/saxon/event/FilterFactory;
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Document projection requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeEmitter(Ljava/lang/String;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, p0, Lnet/sf/saxon/event/Receiver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/event/Receiver;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    new-instance p1, Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-direct {p1}, Lnet/sf/saxon/event/ContentHandlerProxy;-><init>()V

    check-cast p0, Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->setUnderlyingContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/event/ContentHandlerProxy;->setOutputProperties(Ljava/util/Properties;)V

    return-object p1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Output method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is neither a Receiver nor a SAX2 ContentHandler"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create user-supplied output method. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SXCH0004"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->l:Ljava/util/function/Function;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/k9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/k9e;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->l:Ljava/util/function/Function;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->l:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public makeEvaluateInstruction(Lnet/sf/saxon/style/XSLEvaluate;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getTargetExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getContextItemExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getBaseUriExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getNamespaceContextExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getSchemaAwareExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getWithParamsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v7, Lnet/sf/saxon/expr/instruct/EvaluateInstr;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v7, v0, p2, v1}, Lnet/sf/saxon/style/StyleElement;->getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p2

    invoke-virtual {v7, p2}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setDynamicParams(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getDefaultXPathNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setDefaultXPathNamespace(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLEvaluate;->getOptionsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setOptionsExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object v7
.end method

.method public makeMethodMap(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Function;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public makeMode(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/CompilerInfo;)Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    new-instance p0, Lnet/sf/saxon/trans/SimpleMode;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/SimpleMode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object p0
.end method

.method public makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->y:Lnet/sf/saxon/lib/LocalizerFactory;

    if-nez p0, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/number/Numberer_en;

    invoke-direct {p0}, Lnet/sf/saxon/expr/number/Numberer_en;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/number/Numberer_en;->setLanguage(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->setCountry(Ljava/lang/String;)V

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/LocalizerFactory;->getNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lnet/sf/saxon/expr/number/Numberer_en;

    invoke-direct {p0}, Lnet/sf/saxon/expr/number/Numberer_en;-><init>()V

    :cond_3
    return-object p0
.end method

.method public makeObjectLookupExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public makePackageLoader()Lnet/sf/saxon/trans/packages/IPackageLoader;
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/PackageLoaderHE;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeParser(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/XMLReader;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    check-cast p0, Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    new-instance p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a SAX2 XMLReader or SAXParserFactory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 3

    new-instance v0, Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/PipelineConfiguration;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    iget-object v2, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/PipelineConfiguration;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-object v0
.end method

.method public makeResourceResolver(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljavax/xml/transform/URIResolver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    const-string v1, "From Saxon 11.1, the value of the -r option should be a ResourceResolver, not a URIResolver"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    check-cast v0, Ljavax/xml/transform/URIResolver;

    invoke-direct {p0, v0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    move-object v0, p0

    :cond_0
    instance-of p0, v0, Lnet/sf/saxon/lib/ResourceResolver;

    if-eqz p0, :cond_1

    check-cast v0, Lnet/sf/saxon/lib/ResourceResolver;

    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ResourceResolver"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeSchemaURIResolver(Lnet/sf/saxon/lib/ResourceResolver;)Lnet/sf/saxon/lib/SchemaURIResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeSequenceExtent(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->o:Lnet/sf/saxon/expr/instruct/Debugger;

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/expr/instruct/Debugger;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    return-object p0
.end method

.method public makeStaticQueryContext(Z)Lnet/sf/saxon/query/StaticQueryContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->k:Lnet/sf/saxon/lib/StaticQueryContextFactory;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/lib/StaticQueryContextFactory;->newStaticQueryContext(Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    return-object p0
.end method

.method public makeStreamInstruction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/expr/instruct/SourceDocument;

    invoke-direct {p0, p1, p2, p4}, Lnet/sf/saxon/expr/instruct/SourceDocument;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0, p6}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p7}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p0
.end method

.method public makeStreamingTransformer(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Streaming is only available in Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeStyleNodeFactory(Lnet/sf/saxon/style/Compilation;)Lnet/sf/saxon/style/StyleNodeFactory;
    .locals 1

    new-instance v0, Lnet/sf/saxon/style/StyleNodeFactory;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/style/StyleNodeFactory;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/style/Compilation;)V

    return-object v0
.end method

.method public makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 1

    new-instance v0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-direct {v0, p0}, Lnet/sf/saxon/style/StylesheetPackage;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeSystemFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXSLT30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeTemplateRule()Lnet/sf/saxon/expr/instruct/TemplateRule;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;-><init>()V

    return-object p0
.end method

.method public makeThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->L:Lnet/sf/saxon/lib/TraceListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->makeTraceListener(Ljava/lang/String;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeTraceListener(Ljava/lang/String;)Lnet/sf/saxon/lib/TraceListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lnet/sf/saxon/lib/TraceListener;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTraceListenerOutputFile()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    move-object p1, v0

    check-cast p1, Lnet/sf/saxon/lib/TraceListener;

    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, p0}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {p1, v1}, Lnet/sf/saxon/lib/TraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 10
    :cond_0
    :goto_0
    check-cast v0, Lnet/sf/saxon/lib/TraceListener;

    return-object v0

    .line 11
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a TraceListener"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;
    .locals 0

    new-instance p0, Lnet/sf/saxon/trans/TypeAliasManager;

    invoke-direct {p0}, Lnet/sf/saxon/trans/TypeAliasManager;-><init>()V

    return-object p0
.end method

.method public makeUserUnionType(Ljava/util/List;)Lnet/sf/saxon/type/ItemType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/AtomicType;",
            ">;)",
            "Lnet/sf/saxon/type/ItemType;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeXQueryExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/query/QueryModule;Z)Lnet/sf/saxon/query/XQueryExpression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/query/XQueryExpression;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/query/XQueryExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/query/QueryModule;Z)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    :cond_0
    return-object p0
.end method

.method public needEnterpriseEdition()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need the Enterprise Edition of Saxon (with an EnterpriseConfiguration) for this operation"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newExpressionExporter(Ljava/lang/String;Ljava/io/OutputStream;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/trace/ExpressionPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Exporting a stylesheet requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "XQ"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x28

    const/16 v1, 0x1e

    const/16 v2, 0x1f

    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_1

    const/16 p0, 0xa

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown XQuery version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lnet/sf/saxon/query/XQueryParser;

    invoke-direct {p0, v2}, Lnet/sf/saxon/query/XQueryParser;-><init>(I)V

    sget-object p1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "XQuery Update is supported only in Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "XP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "Unknown XPath version "

    const/16 v3, 0x131

    const/16 v4, 0x14

    if-eqz p0, :cond_6

    if-eq p3, v0, :cond_5

    if-eq p3, v2, :cond_5

    if-eq p3, v1, :cond_5

    if-eq p3, v3, :cond_5

    if-ne p3, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    new-instance p0, Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/XPathParser;-><init>()V

    sget-object p1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XPATH:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    return-object p0

    :cond_6
    const-string p0, "PATTERN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    if-eq p3, v1, :cond_8

    if-eq p3, v4, :cond_8

    if-eq p3, v3, :cond_8

    if-ne p3, v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance p0, Lnet/sf/saxon/pattern/PatternParser;

    invoke-direct {p0}, Lnet/sf/saxon/pattern/PatternParser;-><init>()V

    return-object p0

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown expression language "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newPendingUpdateList()Lnet/sf/saxon/expr/PendingUpdateList;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "XQuery update is supported only in Saxon-EE"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->makeStaticQueryContext(Z)Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    return-object p0
.end method

.method public newUserFunction(ZLnet/sf/saxon/trans/FunctionStreamability;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/instruct/MemoFunction;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/MemoFunction;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;-><init>()V

    return-object p0
.end method

.method public obtainDefaultSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 1

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->r:Ljava/util/Properties;

    invoke-direct {v0, p0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method

.method public obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/parser/Optimizer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/Optimizer;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    sget-object v2, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    .line 4
    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->intersect(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public obtainOptimizer(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/Optimizer;
    .locals 1

    .line 7
    new-instance v0, Lnet/sf/saxon/expr/parser/Optimizer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/Optimizer;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 8
    sget-object p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    .line 9
    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->intersect(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    return-object v0
.end method

.method public prepareValidationReporting(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 0

    return-void
.end method

.method public processResultDocument(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ResultDocument;->processInstruction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public readConfigurationFile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeConfigurationReader()Lnet/sf/saxon/trans/ConfigurationReader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/ConfigurationReader;->makeConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public readConfigurationFile(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeConfigurationReader()Lnet/sf/saxon/trans/ConfigurationReader;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/ConfigurationReader;->setBaseConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/ConfigurationReader;->makeConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public readInlineSchema(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Lnet/sf/saxon/lib/ErrorReporter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public readMultipleSchemas(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/event/PipelineConfiguration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    return-void
.end method

.method public readSchema(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->needEnterpriseEdition()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerCollation(Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCollection(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceCollection;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerExtensionFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->x:Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->registerFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V

    return-void
.end method

.method public registerExternalObjectModel(Lnet/sf/saxon/lib/ExternalObjectModel;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/lib/ExternalObjectModel;->getDocumentClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/Configuration;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->v:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_1
    return-void
.end method

.method public registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->X:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerFunctionAnnotationHandler(Lnet/sf/saxon/lib/FunctionAnnotationHandler;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->Z:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sf/saxon/lib/FunctionAnnotationHandler;->getAssertionNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerLocalLicense(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->Y:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportFatalError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_0
    return-void
.end method

.method public requireInteger(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 0

    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an integer"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an integer (or a string representing an integer)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requireProfessionalLicense(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/LicenseException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/LicenseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires a license key for Saxon-PE or Saxon-EE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/LicenseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/String;

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The value of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a string"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/lib/ActiveSource;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/lib/ActiveSource;

    return-object p1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/Configuration$a;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/Configuration$a;-><init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)V

    return-object v0

    :cond_1
    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/Platform;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {p2, p1}, Lnet/sf/saxon/lib/ExternalObjectModel;->getActiveSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized reuseSourceParser(Lorg/xml/sax/XMLReader;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v2}, Lnet/sf/saxon/lib/ParseOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    sget-object v1, Lnet/sf/saxon/Configuration;->c0:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->B:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reuseStyleParser(Lorg/xml/sax/XMLReader;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    sget-object v1, Lnet/sf/saxon/Configuration;->c0:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->C:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sealNamespace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/lib/Feature<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollationURIResolver(Lnet/sf/saxon/lib/CollationURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->d:Lnet/sf/saxon/lib/CollationURIResolver;

    return-void
.end method

.method public setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->g:Lnet/sf/saxon/lib/CollectionFinder;

    return-void
.end method

.method public setCompileWithTracing(Z)V
    .locals 3

    const-string v0, "http://saxon.sf.net/feature/compile-with-tracing"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0, v1}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v2, Lnet/sf/saxon/trace/XSLTTraceCodeInjector;

    invoke-direct {v2}, Lnet/sf/saxon/trace/XSLTTraceCodeInjector;-><init>()V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/CompilerInfo;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    if-eqz p1, :cond_2

    new-instance v1, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;

    invoke-direct {v1}, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;-><init>()V

    :cond_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    return-void
.end method

.method public setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->getData(Ljava/lang/String;)Lnet/sf/saxon/lib/FeatureData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setFeature(Lnet/sf/saxon/lib/FeatureData;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "http://saxon.sf.net/feature/parserFeature?uri="

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "utf-8"

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {p1, p2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/ParseOptions;->addParserFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string v0, "http://saxon.sf.net/feature/parserProperty?uri="

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    :try_start_1
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ParseOptions;->addParserProperties(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized configuration feature: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sf/saxon/lib/Feature<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 14
    iget p1, p1, Lnet/sf/saxon/lib/Feature;->code:I

    invoke-static {p1}, Lnet/sf/saxon/lib/FeatureIndex;->getData(I)Lnet/sf/saxon/lib/FeatureData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setFeature(Lnet/sf/saxon/lib/FeatureData;Ljava/lang/Object;)V

    return-void
.end method

.method public setConversionRules(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public setDebugger(Lnet/sf/saxon/expr/instruct/Debugger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->o:Lnet/sf/saxon/expr/instruct/Debugger;

    return-void
.end method

.method public setDefaultCollection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->i:Ljava/lang/String;

    return-void
.end method

.method public setDefaultCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->q:Ljava/lang/String;

    return-void
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->p:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The default language must be a valid language code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultRegexEngine(Ljava/lang/String;)V
    .locals 1

    const-string v0, "J"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "N"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Regex engine must be S|J|N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/Configuration;->O:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSerializationProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->r:Ljava/util/Properties;

    return-void
.end method

.method public setDocumentNumberAllocator(Lnet/sf/saxon/tree/util/DocumentNumberAllocator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->n:Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    return-void
.end method

.method public setDynamicLoader(Lnet/sf/saxon/lib/IDynamicLoader;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    return-void
.end method

.method public setErrorReporterFactory(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/Configuration;",
            "+",
            "Lnet/sf/saxon/lib/ErrorReporter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->l:Ljava/util/function/Function;

    return-void
.end method

.method public setExpandAttributeDefaults(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    return-void
.end method

.method public setFeature(Lnet/sf/saxon/lib/FeatureData;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lnet/sf/saxon/lib/FeatureData;->uri:Ljava/lang/String;

    iget v1, v1, Lnet/sf/saxon/lib/FeatureData;->code:I

    sget-object v4, Lnet/sf/saxon/Configuration;->booleanFeatures:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v4

    const/16 v5, 0x28

    const/16 v6, 0x1e

    const/16 v7, 0x1f

    const/4 v8, 0x4

    if-eqz v4, :cond_6

    const/16 v4, 0xc

    if-ne v1, v4, :cond_0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->setCompileWithTracing(Z)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x18

    if-ne v1, v4, :cond_1

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->setValidation(Z)V

    goto :goto_2

    :cond_1
    if-ne v1, v7, :cond_2

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->setExpandAttributeDefaults(Z)V

    goto :goto_2

    :cond_2
    if-ne v1, v8, :cond_5

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    iget-object v7, v0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    if-eqz v4, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-virtual {v7, v8}, Lnet/sf/saxon/trans/CompilerInfo;->setXsltVersion(I)V

    iget-object v7, v0, Lnet/sf/saxon/Configuration;->defaultStaticQueryContext:Lnet/sf/saxon/query/StaticQueryContext;

    if-eqz v7, :cond_5

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Lnet/sf/saxon/query/StaticQueryContext;->setLanguageVersion(I)V

    :cond_5
    :goto_2
    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_6
    sget-object v4, Lnet/sf/saxon/Configuration;->stringFeatures:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lnet/sf/saxon/Configuration;->u:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_7
    const-string v10, "1.1"

    const/4 v11, 0x0

    const/16 v12, 0x14

    const-class v13, Ljavax/xml/transform/ErrorListener;

    const-class v14, Ljavax/xml/transform/URIResolver;

    const-string v4, "1.0"

    const/4 v15, 0x0

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown configuration property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-class v1, Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    goto/16 :goto_11

    :pswitch_2
    instance-of v1, v2, Lnet/sf/saxon/lib/ResourceResolver;

    if-eqz v1, :cond_8

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    goto/16 :goto_11

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RESOURCE_RESOLVER value must be an instance of net.sf.saxon.lib.ResourceResolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v1, Lnet/sf/saxon/lib/ProtocolRestrictor;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ProtocolRestrictor;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnet/sf/saxon/Configuration;->S:Lnet/sf/saxon/lib/ProtocolRestrictor;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    if-eqz v1, :cond_2c

    check-cast v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/lib/CatalogResourceResolver;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_4
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireInteger(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v12, :cond_a

    if-eq v1, v6, :cond_a

    const/16 v2, 0x131

    if-eq v1, v2, :cond_a

    if-eq v1, v7, :cond_a

    if-ne v1, v5, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XPath version for XSLT must be 20 (XPath 2.0), 30 (XPath 3.0), 31 (XPath 3.1), or 305 (XPath 3.0 with XSLT-defined extensions), or 40 (XPath 4.0 proposal)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    iput v1, v0, Lnet/sf/saxon/Configuration;->V:I

    goto/16 :goto_11

    :pswitch_5
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireInteger(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v12, :cond_c

    if-eq v1, v6, :cond_c

    if-ne v1, v7, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XPath version for XSD must be 20 (XPath 2.0), 30 (XPath 3.0), or 31 (XPath 3.1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    iput v1, v0, Lnet/sf/saxon/Configuration;->U:I

    goto/16 :goto_11

    :pswitch_6
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireInteger(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lnet/sf/saxon/Configuration;->a0:I

    goto/16 :goto_11

    :pswitch_7
    const-string v1, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v2, "XSLT version ignored: only \"3.0\" is recognized"

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto/16 :goto_11

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v14}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/URIResolver;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    goto/16 :goto_11

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v13}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/ErrorListener;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    goto/16 :goto_11

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setSchemaAware(Z)V

    goto/16 :goto_11

    :pswitch_b
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setDefaultInitialTemplate(Lnet/sf/saxon/om/StructuredQName;)V

    goto/16 :goto_11

    :pswitch_c
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setDefaultInitialMode(Lnet/sf/saxon/om/StructuredQName;)V

    goto/16 :goto_11

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;->setAssertionsEnabled(Z)V

    goto/16 :goto_11

    :pswitch_e
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XSD_VERSION value must be \"1.0\" or \"1.1\" as a String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v4, 0xa

    goto :goto_6

    :cond_f
    const/16 v4, 0xb

    :goto_6
    iput v4, v0, Lnet/sf/saxon/Configuration;->xsdVersion:I

    iput-object v11, v0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    goto/16 :goto_11

    :pswitch_f
    const-string v1, "3.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v2, "XQuery version ignored: only \"3.1\" is recognized"

    invoke-direct {v1, v2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v13}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/ErrorListener;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/query/StaticQueryContext;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    goto/16 :goto_11

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setSchemaAware(Z)V

    goto/16 :goto_11

    :pswitch_12
    new-instance v1, Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/XPathParser;-><init>()V

    sget-object v3, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->SEQUENCE_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {v1, v3, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v3, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v2

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setRequiredContextItemType(Lnet/sf/saxon/type/ItemType;)V

    goto/16 :goto_11

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context item type must have no occurrence indicator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setPreserveNamespaces(Z)V

    goto/16 :goto_11

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setPreserveBoundarySpace(Z)V

    goto/16 :goto_11

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setInheritNamespaces(Z)V

    goto/16 :goto_11

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setEmptyLeast(Z)V

    goto/16 :goto_11

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setDefaultFunctionNamespace(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setConstructionMode(I)V

    goto/16 :goto_11

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setUpdatingEnabled(Z)V

    goto/16 :goto_11

    :pswitch_1b
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XML_VERSION value must be \"1.0\" or \"1.1\" as a String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v4, 0xa

    goto :goto_8

    :cond_13
    const/16 v4, 0xb

    :goto_8
    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->setXMLVersion(I)V

    goto/16 :goto_11

    :pswitch_1c
    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setXIncludeAware(Z)V

    goto/16 :goto_11

    :pswitch_1d
    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setValidationWarnings(Z)V

    goto/16 :goto_11

    :pswitch_1e
    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setAddCommentsAfterValidationErrors(Z)V

    goto/16 :goto_11

    :pswitch_1f
    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setUseXsiSchemaLocation(Z)V

    goto/16 :goto_11

    :pswitch_20
    invoke-virtual {v0, v3, v2, v14}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/URIResolver;

    new-instance v2, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v2, v1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    goto/16 :goto_11

    :pswitch_21
    const-class v1, Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    goto/16 :goto_11

    :pswitch_22
    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    goto/16 :goto_11

    :pswitch_23
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    sparse-switch v3, :sswitch_data_0

    :goto_9
    const/16 v16, -0x1

    goto :goto_a

    :sswitch_0
    const-string v3, "linkedTree"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    move/from16 v16, v8

    goto :goto_a

    :sswitch_1
    const-string v3, "jdom2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_9

    :cond_15
    move/from16 v16, v4

    goto :goto_a

    :sswitch_2
    const-string v3, "jdom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_9

    :cond_16
    const/16 v16, 0x2

    goto :goto_a

    :sswitch_3
    const-string v3, "tinyTree"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v16, v9

    goto :goto_a

    :sswitch_4
    const-string v3, "tinyTreeCondensed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    move/from16 v16, v15

    :goto_a
    packed-switch v16, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized value TREE_MODEL_NAME = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': must be linkedTree|tinyTree|tinyTreeCondensed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    invoke-virtual {v0, v15}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_25
    invoke-virtual {v0, v8}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_26
    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_27
    invoke-virtual {v0, v9}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_28
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_29
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireInteger(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTreeModel(I)V

    goto/16 :goto_11

    :pswitch_2a
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTraceListenerOutputFile(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_2b
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTraceListenerClass(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_2c
    instance-of v1, v2, Lnet/sf/saxon/lib/TraceListener;

    if-eqz v1, :cond_19

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/TraceListener;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    goto/16 :goto_11

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TRACE_LISTENER is of wrong class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2d
    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setTiming(Z)V

    goto/16 :goto_11

    :pswitch_2e
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setStyleParserClass(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_2f
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_b
    const/4 v15, -0x1

    goto :goto_c

    :sswitch_5
    const-string v3, "ignorable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v15, 0x2

    goto :goto_c

    :sswitch_6
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_b

    :cond_1b
    move v15, v9

    goto :goto_c

    :sswitch_7
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_b

    :cond_1c
    :goto_c
    packed-switch v15, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized value STRIP_WHITESPACE = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': must be \'all\', \'none\', or \'ignorable\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_11

    :pswitch_31
    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_11

    :pswitch_32
    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_11

    :pswitch_33
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setStandardErrorOutput(Ljava/io/PrintStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_34
    const-class v1, Lnet/sf/saxon/lib/SourceResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/SourceResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setSourceResolver(Lnet/sf/saxon/lib/SourceResolver;)V

    goto/16 :goto_11

    :pswitch_35
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setSourceParserClass(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_36
    const-class v1, Lnet/sf/saxon/lib/SerializerFactory;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/SerializerFactory;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setSerializerFactory(Lnet/sf/saxon/lib/SerializerFactory;)V

    goto/16 :goto_11

    :pswitch_37
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setSchemaValidationMode(I)V

    goto/16 :goto_11

    :pswitch_38
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireInteger(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setSchemaValidationMode(I)V

    goto/16 :goto_11

    :pswitch_39
    const-class v1, Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V

    goto/16 :goto_11

    :pswitch_3a
    instance-of v1, v2, Lnet/sf/saxon/lib/OutputURIResolver;

    if-eqz v1, :cond_1d

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V

    goto/16 :goto_11

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OUTPUT_URI_RESOLVER value must be an instance of net.sf.saxon.lib.OutputURIResolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v15}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    goto :goto_d

    :cond_1e
    sget-object v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_EE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :goto_d
    iput-object v1, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    goto :goto_f

    :cond_1f
    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/Configuration;->requireString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v15}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    goto :goto_e

    :cond_20
    sget-object v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_EE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :goto_e
    iput-object v1, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    goto :goto_f

    :cond_21
    new-instance v2, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :goto_f
    iget-object v1, v0, Lnet/sf/saxon/Configuration;->optimizer:Lnet/sf/saxon/expr/parser/Optimizer;

    if-eqz v1, :cond_22

    iget-object v2, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    :cond_22
    iget-object v1, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x21

    const-string v3, "http://saxon.sf.net/feature/generateByteCode"

    invoke-virtual {v0, v2, v3, v1}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    iget-object v0, v0, Lnet/sf/saxon/Configuration;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    goto/16 :goto_11

    :pswitch_3c
    instance-of v1, v2, Lnet/sf/saxon/om/NamePool;

    if-eqz v1, :cond_23

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setNamePool(Lnet/sf/saxon/om/NamePool;)V

    goto/16 :goto_11

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NAME_POOL value must be an instance of net.sf.saxon.om.NamePool"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3d
    const-class v1, Lnet/sf/saxon/lib/ModuleURIResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/ModuleURIResolver;

    instance-of v2, v1, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    if-eqz v2, :cond_24

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    :cond_24
    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    goto/16 :goto_11

    :pswitch_3e
    instance-of v1, v2, Lnet/sf/saxon/lib/ModuleURIResolver;

    if-eqz v1, :cond_25

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/ModuleURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    goto/16 :goto_11

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MODULE_URI_RESOLVER value must be an instance of net.sf.saxon.lib.ModuleURIResolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_26

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setMessageEmitterClass(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MESSAGE_EMITTER_CLASS class must be a String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_40
    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setLineNumbering(Z)V

    goto/16 :goto_11

    :pswitch_41
    const-class v1, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    iput-object v1, v0, Lnet/sf/saxon/Configuration;->h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    goto/16 :goto_11

    :pswitch_42
    instance-of v1, v2, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    if-eqz v1, :cond_27

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    iput-object v1, v0, Lnet/sf/saxon/Configuration;->h:Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    goto/16 :goto_11

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENVIRONMENT_VARIABLE_RESOLVER value must be an instance of net.sf.saxon.lib.EnvironmentVariableResolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_43
    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, v11}, Lnet/sf/saxon/lib/ParseOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto/16 :goto_11

    :cond_28
    iget-object v1, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    const-class v4, Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v3, v2, v4}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/EntityResolver;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/ParseOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto/16 :goto_11

    :pswitch_44
    invoke-static {v3, v2}, Lnet/sf/saxon/Configuration;->requireBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v4, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    goto :goto_10

    :cond_29
    iget-object v4, v0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Configuration;->isValidation()Z

    move-result v5

    if-eqz v5, :cond_2a

    move v8, v9

    :cond_2a
    invoke-virtual {v4, v8}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setDefaultRegexEngine(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setDefaultLanguage(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setDefaultCountry(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setDefaultCollection(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/Configuration;->e:Ljava/lang/String;

    goto :goto_11

    :pswitch_4a
    const-class v1, Lnet/sf/saxon/lib/CollectionFinder;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/CollectionFinder;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V

    goto :goto_11

    :pswitch_4b
    instance-of v1, v2, Lnet/sf/saxon/lib/CollectionFinder;

    if-eqz v1, :cond_2b

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/CollectionFinder;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V

    goto :goto_11

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "COLLECTION_FINDER value must be an instance of net.sf.saxon.lib.ICollectionFinder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4c
    const-class v1, Lnet/sf/saxon/lib/CollationURIResolver;

    invoke-virtual {v0, v3, v2, v1}, Lnet/sf/saxon/Configuration;->instantiateClassName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/CollationURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setCollationURIResolver(Lnet/sf/saxon/lib/CollationURIResolver;)V

    goto :goto_11

    :pswitch_4d
    instance-of v1, v2, Lnet/sf/saxon/lib/CollationURIResolver;

    if-eqz v1, :cond_2d

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/lib/CollationURIResolver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->setCollationURIResolver(Lnet/sf/saxon/lib/CollationURIResolver;)V

    :cond_2c
    :goto_11
    :pswitch_4e
    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "COLLATION_URI_RESOLVER value must be an instance of net.sf.saxon.lib.CollationURIResolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_44
        :pswitch_0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_4e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4e
        :pswitch_4e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_4e
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7ce8ebf7 -> :sswitch_4
        -0x79034542 -> :sswitch_3
        0x31b498 -> :sswitch_2
        0x604de9a -> :sswitch_1
        0x500bd957 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x179a1 -> :sswitch_7
        0x33af38 -> :sswitch_6
        0x1a7604cd -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->m:Ljava/lang/String;

    return-void
.end method

.method public setLineNumbering(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    return-void
.end method

.method public setLocalizerFactory(Lnet/sf/saxon/lib/LocalizerFactory;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->y:Lnet/sf/saxon/lib/LocalizerFactory;

    return-void
.end method

.method public setLogger(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public setMediaQueryEvaluator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->W:Ljava/util/Comparator;

    return-void
.end method

.method public setMessageEmitterClass(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setMessageReceiverClassName(Ljava/lang/String;)V

    return-void
.end method

.method public setModuleURIResolver(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/Configuration;->s:Lnet/sf/saxon/lib/IDynamicLoader;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/lib/IDynamicLoader;->getInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/sf/saxon/lib/ModuleURIResolver;

    if-eqz v1, :cond_1

    .line 4
    instance-of p1, v0, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    if-eqz p1, :cond_0

    .line 5
    move-object p1, v0

    check-cast p1, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 6
    :cond_0
    check-cast v0, Lnet/sf/saxon/lib/ModuleURIResolver;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    return-void

    .line 7
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ModuleURIResolver"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    return-void
.end method

.method public setNamePool(Lnet/sf/saxon/om/NamePool;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->z:Lnet/sf/saxon/om/NamePool;

    return-void
.end method

.method public setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->defaultXsltCompilerInfo:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V

    return-void
.end method

.method public setParameterizedURIResolver()V
    .locals 2

    sget-object v0, Lnet/sf/saxon/lib/Feature;->RECOGNIZE_URI_QUERY_PARAMETERS:Lnet/sf/saxon/lib/Feature;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    return-void
.end method

.method public setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->a:Lnet/sf/saxon/Configuration$ApiProvider;

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->R:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setSchemaValidationMode(I)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    return-void
.end method

.method public setSerializerFactory(Lnet/sf/saxon/lib/SerializerFactory;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->A:Lnet/sf/saxon/lib/SerializerFactory;

    return-void
.end method

.method public setSourceParserClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->D:Ljava/lang/String;

    return-void
.end method

.method public setSourceResolver(Lnet/sf/saxon/lib/SourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->E:Lnet/sf/saxon/lib/SourceResolver;

    return-void
.end method

.method public setStandardErrorOutput(Ljava/io/PrintStream;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->F:Lnet/sf/saxon/lib/Logger;

    instance-of v0, p0, Lnet/sf/saxon/lib/StandardLogger;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardLogger;->setPrintStream(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public setStaticQueryContextFactory(Lnet/sf/saxon/lib/StaticQueryContextFactory;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->k:Lnet/sf/saxon/lib/StaticQueryContextFactory;

    return-void
.end method

.method public setStyleParserClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->H:Ljava/lang/String;

    return-void
.end method

.method public setTiming(Z)V
    .locals 1

    const/16 v0, 0x4d

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/Configuration;->t:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->remove(I)Z

    :goto_0
    return-void
.end method

.method public setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->L:Lnet/sf/saxon/lib/TraceListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->setCompileWithTracing(Z)V

    const-string p1, "http://saxon.sf.net/feature/allow-multithreading"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, v0}, Lnet/sf/saxon/Configuration;->internalSetBooleanProperty(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTraceListenerClass(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->setCompileWithTracing(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->makeTraceListener(Ljava/lang/String;)Lnet/sf/saxon/lib/TraceListener;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->M:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->setCompileWithTracing(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTraceListenerOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->N:Ljava/lang/String;

    return-void
.end method

.method public setTreeModel(I)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {p1}, Lnet/sf/saxon/om/TreeModel;->getTreeModel(I)Lnet/sf/saxon/om/TreeModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    return-void
.end method

.method public setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->I:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-void
.end method

.method public setValidation(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    return-void
.end method

.method public setValidationWarnings(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setContinueAfterValidationErrors(Z)V

    return-void
.end method

.method public setVersionWarning(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Configuration;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    return-void
.end method

.method public setXMLVersion(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/Configuration;->T:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/Configuration;->K:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public unravel(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/om/NodeInfo;

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {v2, p1, p0}, Lnet/sf/saxon/lib/ExternalObjectModel;->unravel(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Externally supplied Node belongs to the wrong Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Lnet/sf/saxon/om/NodeSource;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeSource;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NodeSource;->getNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Externally supplied NodeInfo belongs to the wrong Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A source of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not recognized by any registered object model"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public validateAttribute(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/type/SimpleType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;,
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
