.class public Lorg/apache/xerces/impl/xs/traversers/XSDHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/traversers/XSDHandler$a;,
        Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;,
        Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;
    }
.end annotation


# static fields
.field public static final A0:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field public static final B0:I = 0x1

.field public static final C0:I = 0x2

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field public static final D0:I = 0x3

.field protected static final DEBUG_NODE_POOL:Z = false

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field public static final E0:I = 0x4

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final F0:I = 0x5

.field public static final G0:I = 0x6

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field public static final H0:I = 0x7

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field public static final I0:Ljava/util/Hashtable;

.field public static final J0:I = 0x1e

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field public static final K0:I = 0xa

.field public static final L0:I = 0x2

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field public static final M0:I = 0x2

.field public static final N0:[[Ljava/lang/String;

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field public static final O0:[Ljava/lang/String;

.field public static final P0:[Ljava/lang/String;

.field public static final Q0:[Ljava/lang/String;

.field public static final REDEF_IDENTIFIER:Ljava/lang/String; = "_fn3dktizrknc9pi"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field public A:Ljava/util/Hashtable;

.field public B:Ljava/util/Hashtable;

.field public C:Ljava/util/Hashtable;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public J:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field public K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field public L:Lorg/apache/xerces/util/SymbolTable;

.field public M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

.field public N:Lorg/apache/xerces/impl/xs/XSDDescription;

.field public O:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field public P:Lcom/sunia/HTREnginev2/pmo;

.field public Q:Lorg/apache/xerces/impl/xs/traversers/b;

.field public R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

.field public S:Lorg/apache/xerces/impl/xs/traversers/c;

.field public T:Lorg/apache/xerces/impl/xs/traversers/d;

.field public U:Lcom/sunia/HTREnginev2/qmo;

.field public V:Lcom/sunia/HTREnginev2/rmo;

.field public W:Lorg/apache/xerces/impl/xs/traversers/f;

.field public X:Lcom/sunia/HTREnginev2/smo;

.field public Y:Lorg/apache/xerces/impl/xs/traversers/g;

.field public Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

.field public a:Ljava/util/Hashtable;

.field public a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field public b:Ljava/util/Hashtable;

.field public b0:Lcom/sunia/HTREnginev2/a2m;

.field public c:Ljava/util/Hashtable;

.field public c0:Lcom/sunia/HTREnginev2/gxm;

.field public d:Ljava/util/Hashtable;

.field public d0:Lorg/apache/xerces/parsers/XML11Configuration;

.field public e:Ljava/util/Hashtable;

.field public e0:Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;

.field public f:Ljava/util/Hashtable;

.field public f0:I

.field protected fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

.field protected fNotationRegistry:Ljava/util/Hashtable;

.field public g:Ljava/util/Hashtable;

.field public g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

.field public h:Ljava/util/Hashtable;

.field public h0:[Lorg/w3c/dom/Element;

.field public i:Ljava/util/Hashtable;

.field public i0:[Lcom/sunia/HTREnginev2/tmo;

.field public j:Ljava/util/Hashtable;

.field public j0:[I

.field public k:Ljava/util/Hashtable;

.field public k0:[Lorg/apache/xerces/xs/XSObject;

.field public l:Ljava/util/Hashtable;

.field public l0:[[Ljava/lang/String;

.field public m:Ljava/util/Hashtable;

.field public m0:I

.field public n:Ljava/util/Hashtable;

.field public n0:[Lorg/w3c/dom/Element;

.field public o:[Ljava/util/Hashtable;

.field public o0:[Lcom/sunia/HTREnginev2/tmo;

.field public p:Ljava/util/Hashtable;

.field public p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public q:Ljava/util/Hashtable;

.field public q0:[[Ljava/lang/String;

.field public r:Ljava/util/Hashtable;

.field public r0:Lorg/apache/xerces/util/SymbolHash;

.field public s:Ljava/util/Vector;

.field public s0:Lorg/apache/xerces/util/SymbolHash;

.field public t:Ljava/util/Hashtable;

.field public t0:Lorg/apache/xerces/util/SymbolHash;

.field public u:Ljava/util/Hashtable;

.field public u0:Lorg/apache/xerces/util/SymbolHash;

.field public v:Ljava/util/Hashtable;

.field public v0:Lorg/apache/xerces/util/SymbolHash;

.field public w:Ljava/util/Hashtable;

.field public w0:Lorg/apache/xerces/util/SymbolHash;

.field public x:Lcom/sunia/HTREnginev2/tmo;

.field public x0:Lorg/apache/xerces/util/SymbolHash;

.field public y:Ljava/util/Hashtable;

.field public y0:Ljava/util/Vector;

.field public z:Ljava/util/Hashtable;

.field public z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I0:Ljava/util/Hashtable;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "src-include.2.1"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "src-redefine.3.1"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "src-import.3.1"

    const-string v2, "src-import.3.2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "TargetNamespace.1"

    const-string v2, "TargetNamespace.2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N0:[[Ljava/lang/String;

    const-string v4, "src-include.1"

    const-string v5, "src-redefine.2"

    const-string v6, "src-import.2"

    const-string v7, "schema_reference.4"

    const-string v8, "schema_reference.4"

    const-string v9, "schema_reference.4"

    const-string v10, "schema_reference.4"

    const-string v11, "schema_reference.4"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O0:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attribute declaration"

    const-string v3, "attribute group"

    const-string v4, "element declaration"

    const-string v5, "group"

    const-string v6, "identity constraint"

    const-string v7, "notation"

    const-string v8, "type definition"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P0:[Ljava/lang/String;

    const-string v1, "Internal-Error"

    const-string v2, "Internal-Error"

    const-string v3, "src-attribute_group.3"

    const-string v4, "e-props-correct.6"

    const-string v5, "mg-props-correct.2"

    const-string v6, "Internal-Error"

    const-string v7, "Internal-Error"

    const-string v8, "st-props-correct.2"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n:Ljava/util/Hashtable;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/util/Hashtable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v8, 0x7

    aput-object v3, v1, v8

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o:[Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C:Ljava/util/Hashtable;

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    iput v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    const/16 v1, 0x1e

    new-array v3, v1, [Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    new-array v3, v1, [Lorg/w3c/dom/Element;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    new-array v3, v1, [Lcom/sunia/HTREnginev2/tmo;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    new-array v3, v1, [I

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0:[I

    new-array v3, v1, [Lorg/apache/xerces/xs/XSObject;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    iput v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    new-array v1, v5, [Lorg/w3c/dom/Element;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    new-array v1, v5, [Lcom/sunia/HTREnginev2/tmo;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    new-array v1, v5, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    filled-new-array {v5, v4}, [I

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v7}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v7}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v4}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v6}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0:Lorg/apache/xerces/util/SymbolHash;

    new-instance v1, Lorg/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0:Lorg/apache/xerces/util/SymbolHash;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    new-instance v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    new-instance v1, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance p1, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/Vector;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xs/XSObject;

    invoke-virtual {p0, v4, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z(Lorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSDDescription;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public A0()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    const/4 v2, 0x0

    move v0, v2

    :goto_1
    iget v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    if-lt v0, v3, :cond_2

    iput v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    move v0, v2

    :goto_2
    iget v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    if-lt v0, v3, :cond_1

    iput v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reset(Lorg/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q:Lorg/apache/xerces/impl/xs/traversers/b;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/c;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->U:Lcom/sunia/HTREnginev2/qmo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V:Lcom/sunia/HTREnginev2/rmo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->X:Lcom/sunia/HTREnginev2/smo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Y:Lorg/apache/xerces/impl/xs/traversers/g;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/a;->l(Lorg/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    aput-object v1, v3, v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o:[Ljava/util/Hashtable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)I
    .locals 8

    invoke-static {p4}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p4

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-nez p4, :cond_0

    return v7

    :cond_0
    invoke-static {p4}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)I

    move-result v1

    add-int/2addr v7, v1

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, p5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0(Ljava/lang/String;Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p4, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    invoke-interface {p4, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "src-redefine.6.1.2"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_5
    :goto_2
    invoke-static {p4}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p4

    goto/16 :goto_0
.end method

.method public final B0(Lorg/apache/xerces/impl/xs/XSModelGroupImpl;Lorg/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, p2, :cond_2

    :goto_1
    iget p0, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 p2, p0, -0x1

    if-lt v1, p2, :cond_1

    sub-int/2addr p0, v3

    iput p0, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    return v3

    :cond_1
    iget-object p0, p1, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 p2, v1, 0x1

    aget-object v0, p0, p2

    aput-object v0, p0, v1

    move v1, p2

    goto :goto_1

    :cond_2
    iget-short v4, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    check-cast v2, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-virtual {p0, v2, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B0(Lorg/apache/xerces/impl/xs/XSModelGroupImpl;Lorg/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D(Ljava/lang/String;ILorg/w3c/dom/Element;)V

    :cond_0
    invoke-virtual {v3, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/tmo;

    if-ne v0, v5, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    iget-object v2, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/tmo;

    goto :goto_0

    :cond_3
    invoke-static/range {p5 .. p5}, Lorg/apache/xerces/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move v2, v11

    :goto_1
    const-string v6, "sch-props-correct.2"

    if-eqz v0, :cond_b

    if-ne v1, v10, :cond_5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v12, 0x2c

    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "_fn3dktizrknc9pi"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, ","

    if-ne v0, v10, :cond_8

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_a

    iget-object v0, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    iget-object v2, v10, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    goto :goto_5

    :cond_a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_5

    :cond_b
    iget-boolean v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz v0, :cond_c

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o:[Ljava/util/Hashtable;

    aget-object v0, v0, v9

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    :cond_c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_d
    :goto_5
    iget-boolean v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-eqz v0, :cond_e

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o:[Ljava/util/Hashtable;

    aget-object v0, v0, v9

    invoke-virtual {v0, p1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public final C0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ":"

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v13, ","

    if-eqz v1, :cond_8

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "src-redefine.5.a.a"

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v6, v2, v12, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_0
    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v0, "src-redefine.5.a.b"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_3
    iget-object v12, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v12, v1, v10, v7}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v12

    sget v14, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v14, v12, v14

    check-cast v14, Lorg/apache/xerces/xni/QName;

    if-eqz v14, :cond_6

    iget-object v15, v14, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v11, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-ne v15, v11, :cond_6

    iget-object v11, v14, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v14, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v14, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v1, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_1
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "src-redefine.5.a.c"

    invoke-virtual {v6, v0, v1, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v7}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    goto/16 :goto_b

    :cond_8
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {p2 .. p2}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "src-redefine.5.b.a"

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-static {v1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v8, "src-redefine.5.b.b"

    if-nez v2, :cond_c

    :goto_4
    invoke-virtual {v6, v8, v12, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_c
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    sget-object v8, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v0, "src-redefine.5.b.c"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_f
    iget-object v8, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v2, v10, v7}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v8

    sget v11, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v8, v8, v11

    check-cast v8, Lorg/apache/xerces/xni/QName;

    if-eqz v8, :cond_12

    iget-object v11, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v12, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-ne v11, v12, :cond_12

    iget-object v11, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_5

    :cond_10
    iget-object v0, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_11
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v2, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_12
    :goto_5
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v10

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v5, :cond_13

    goto :goto_6

    :cond_13
    move-object v4, v5

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "src-redefine.5.b.d"

    invoke-virtual {v6, v0, v3, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_14
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_7

    :cond_15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-redefine.7.1"

    invoke-virtual {v6, v1, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_b

    :cond_16
    if-ne v0, v1, :cond_17

    goto/16 :goto_b

    :cond_17
    iget-object v0, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_9

    :cond_18
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_8
    iget-object v2, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_19
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_a

    :cond_1a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-redefine.6.1.1"

    invoke-virtual {v6, v1, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_b

    :cond_1b
    if-ne v0, v1, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v0, v7, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_9

    :cond_1d
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_8

    :cond_1e
    const-string v0, "could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Internal-Error"

    invoke-virtual {v6, v1, v0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_b
    return-void
.end method

.method public D(Ljava/lang/String;ILorg/w3c/dom/Element;)V
    .locals 3

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "sch-props-correct.2"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method public D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method public final E(Ljava/util/Vector;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public E0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object/from16 v2, p3

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const/4 v7, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/xml-schema-1"

    const/4 v12, 0x1

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final F()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;-><init>(Lorg/apache/xerces/impl/xs/traversers/e;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e0:Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e0:Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v0}, Lorg/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_0
    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/properties/locale"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method public final G(Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public G0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object/from16 v2, p3

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const/4 v7, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/xml-schema-1"

    const/4 v12, 0x0

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final H()V
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    new-instance v0, Lcom/sunia/HTREnginev2/pmo;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/pmo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/b;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/b;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q:Lorg/apache/xerces/impl/xs/traversers/b;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/c;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/c;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/d;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/d;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    new-instance v0, Lcom/sunia/HTREnginev2/qmo;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/qmo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->U:Lcom/sunia/HTREnginev2/qmo;

    new-instance v0, Lcom/sunia/HTREnginev2/rmo;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/rmo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V:Lcom/sunia/HTREnginev2/rmo;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/f;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/f;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    new-instance v0, Lcom/sunia/HTREnginev2/smo;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/smo;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->X:Lcom/sunia/HTREnginev2/smo;

    new-instance v0, Lorg/apache/xerces/impl/xs/traversers/g;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/traversers/g;-><init>(Lorg/apache/xerces/impl/xs/traversers/XSDHandler;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Y:Lorg/apache/xerces/impl/xs/traversers/g;

    return-void
.end method

.method public final H0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "sch-props-correct.2"

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public final I(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/opti/DefaultDocument;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public final I0(Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;Z)Lorg/w3c/dom/Element;
    .locals 9

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I0:Ljava/util/Hashtable;

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, p4, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lorg/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lorg/apache/xerces/xni/parser/XMLEntityResolver;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p4, 0x0

    const-string v0, "schema_reference.4"

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    aget-object p4, v1, p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, v0, p4, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    aget-object p4, v1, p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, v0, p4, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_1
    const/4 p4, 0x0

    :goto_2
    move-object v2, p4

    instance-of p4, v2, Lorg/apache/xerces/util/DOMInputSource;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/DOMInputSource;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0(Ljava/lang/String;Lorg/apache/xerces/util/DOMInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p4, v2, Lorg/apache/xerces/util/SAXInputSource;

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/SAXInputSource;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0(Ljava/lang/String;Lorg/apache/xerces/util/SAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p4, v2, Lorg/apache/xerces/util/StAXInputSource;

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/StAXInputSource;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0(Ljava/lang/String;Lorg/apache/xerces/util/StAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p4, v2, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz p4, :cond_5

    check-cast v2, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    invoke-virtual {p0, v2, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0(Lorg/apache/xerces/impl/xs/util/XSInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final J0(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 7

    instance-of v0, p1, Lorg/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/apache/xerces/util/DOMInputSource;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0(Ljava/lang/String;Lorg/apache/xerces/util/DOMInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lorg/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/apache/xerces/util/SAXInputSource;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0(Ljava/lang/String;Lorg/apache/xerces/util/SAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/apache/xerces/util/StAXInputSource;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0(Ljava/lang/String;Lorg/apache/xerces/util/StAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0(Lorg/apache/xerces/impl/xs/util/XSInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public final K(Ljava/util/Vector;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final K0(Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;Z)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I0:Ljava/util/Hashtable;

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, p4, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lorg/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lorg/apache/xerces/xni/parser/XMLEntityResolver;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p4, 0x0

    const-string v0, "schema_reference.4"

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    aget-object p1, p1, p4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    aget-object p1, p1, p4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public final L([Lorg/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xs/XSObject;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T(Lorg/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final L0(Lcom/sunia/HTREnginev2/tmo;)V
    .locals 2

    iget-object v0, p1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lorg/apache/xerces/util/DOMUtil;->setVisible(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/tmo;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L0(Lcom/sunia/HTREnginev2/tmo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final M([Lorg/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;
    .locals 4

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v2, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-gez p1, :cond_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public M0()V
    .locals 10

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xerces/impl/xs/traversers/c;->p:Z

    :goto_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    aget-object v4, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    aget-object v5, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, v5, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0:[I

    aget v7, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    aget-object v8, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    aget-object v9, v0, v1

    invoke-virtual/range {v2 .. v9}, Lorg/apache/xerces/impl/xs/traversers/c;->s(Lorg/apache/xerces/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;ILorg/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    aget-object v0, v0, v1

    instance-of v2, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lorg/apache/xerces/xs/XSParticle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSParticle;->getTerm()Lorg/apache/xerces/xs/XSTerm;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    check-cast v0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B0(Lorg/apache/xerces/impl/xs/XSModelGroupImpl;Lorg/apache/xerces/impl/xs/XSParticleDecl;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final N(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r(Lorg/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P0(Lorg/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N0(Ljava/util/Hashtable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N(Ljava/lang/String;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public final O(Lorg/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSAttributeDeclaration;->getTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method public final O0(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, p2, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E(Ljava/util/Vector;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final P(Lorg/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSAttributeGroupDefinition;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R(Lorg/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method public final P0(Lorg/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E(Ljava/util/Vector;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final Q(Lorg/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSAttributeUse;->getAttrDeclaration()Lorg/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w(Lorg/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method public final Q0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final R(Lorg/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xs/XSAttributeUse;

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q(Lorg/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final R0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    if-eq v3, p1, :cond_3

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v5, p1, :cond_3

    invoke-virtual {v3, v4, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final S(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R(Lorg/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lorg/apache/xerces/xs/XSParticle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->X(Lorg/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method public final S0(Ljava/util/ArrayList;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lorg/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e0:Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->a(Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/mmo;

    :goto_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, v3, Lcom/sunia/HTREnginev2/mmo;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :try_start_0
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    invoke-virtual {v4, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, v3, Lcom/sunia/HTREnginev2/mmo;->e:Lcom/sunia/HTREnginev2/mmo;

    goto :goto_1
.end method

.method public final T(Lorg/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/xs/XSModelGroupDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W(Lorg/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/xs/XSAttributeGroupDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P(Lorg/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->U(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O(Lorg/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :goto_1
    return-void
.end method

.method public final U(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSElementDeclaration;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSElementDeclaration;->getSubstitutionGroupAffiliation()Lorg/apache/xerces/xs/XSElementDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method public final V(Lorg/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSModelGroup;->getParticles()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xs/XSParticle;

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->X(Lorg/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final W(Lorg/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSModelGroupDefinition;->getModelGroup()Lorg/apache/xerces/xs/XSModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V(Lorg/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method public final X(Lorg/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSParticle;->getTerm()Lorg/apache/xerces/xs/XSTerm;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/xerces/xs/XSModelGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V(Lorg/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/xerces/xs/XSElementDeclaration;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method public final Y(Lorg/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getPrimitiveType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final Z(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Y(Lorg/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public a0(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v2, 0xa

    new-array v1, v1, [Lorg/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lorg/w3c/dom/Element;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lcom/sunia/HTREnginev2/tmo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0:[I

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lorg/apache/xerces/xs/XSObject;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iget v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    aput-object p5, v0, v1

    iget-object p5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0:[Lorg/w3c/dom/Element;

    aput-object p1, p5, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0:[Lcom/sunia/HTREnginev2/tmo;

    aput-object p2, p1, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0:[I

    aput p3, p1, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k0:[Lorg/apache/xerces/xs/XSObject;

    aput-object p4, p1, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l0:[[Ljava/lang/String;

    add-int/lit8 p3, v1, 0x1

    iput p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0:I

    iget-object p0, p2, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-void
.end method

.method public final b(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p0, v3

    :goto_1
    if-lt p0, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, p0, 0x1

    invoke-interface {v5, v1}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {p2, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final b0(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public buildGlobalNameRegistries()V
    .locals 20

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sunia/HTREnginev2/tmo;

    iget-object v10, v9, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v10, v0}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x1

    move-object v11, v0

    move v12, v1

    :goto_1
    const/4 v13, 0x0

    if-nez v11, :cond_3

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v10, v0}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v13, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    move-object/from16 v18, v8

    move-object/from16 v17, v10

    goto/16 :goto_10

    :cond_4
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "s4s-elt-invalid-content.3"

    if-nez v0, :cond_19

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_f

    :cond_5
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, ","

    if-eqz v0, :cond_f

    if-nez v12, :cond_6

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v11}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_6
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v13, v0

    :goto_4
    if-nez v13, :cond_7

    goto :goto_3

    :cond_7
    sget-object v15, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v13, v15}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_5
    move-object/from16 v18, v8

    :goto_6
    move-object/from16 v17, v10

    goto/16 :goto_a

    :cond_9
    iget-object v0, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "_fn3dktizrknc9pi"

    if-eqz v0, :cond_b

    const/4 v2, 0x2

    iget-object v5, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b:Ljava/util/Hashtable;

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v5, v13

    move-object/from16 v16, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v13, v15}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object/from16 v16, v6

    move-object v6, v3

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x4

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d:Ljava/util/Hashtable;

    iget-object v5, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v17, v4

    move-object v4, v5

    move-object v5, v13

    move-object/from16 v18, v8

    move-object v8, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v13, v15}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    :goto_8
    move-object/from16 v18, v8

    move-object v8, v6

    const/4 v2, 0x7

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g:Ljava/util/Hashtable;

    iget-object v6, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v19, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v13

    move-object/from16 v17, v10

    move-object v10, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v13, v15}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, v19

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-static {v13}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto/16 :goto_4

    :cond_f
    move-object/from16 v18, v8

    move-object/from16 v17, v10

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_e

    :cond_10
    iget-object v1, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_b

    :cond_11
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v9, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h:Ljava/util/Hashtable;

    :goto_c
    move-object/from16 v0, p0

    move-object v5, v11

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    goto :goto_e

    :cond_12
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i:Ljava/util/Hashtable;

    goto :goto_c

    :cond_13
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_d

    :cond_14
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j:Ljava/util/Hashtable;

    goto :goto_c

    :cond_15
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x4

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k:Ljava/util/Hashtable;

    goto :goto_c

    :cond_16
    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x6

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m:Ljava/util/Hashtable;

    goto :goto_c

    :cond_17
    :goto_d
    const/4 v2, 0x7

    iget-object v3, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g:Ljava/util/Hashtable;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n:Ljava/util/Hashtable;

    goto :goto_c

    :cond_18
    :goto_e
    move v12, v13

    goto :goto_10

    :cond_19
    :goto_f
    move-object/from16 v18, v8

    move-object/from16 v17, v10

    if-nez v12, :cond_1a

    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v11}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_1a
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v11, v0}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :goto_10
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto/16 :goto_1
.end method

.method public c(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final c0(Ljava/lang/String;Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p2, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-ne v3, v2, :cond_2

    if-nez p0, :cond_2

    iget-boolean v0, p2, Lcom/sunia/HTREnginev2/tmo;->i:Z

    if-eqz v0, :cond_2

    iget-object p0, p2, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    :cond_2
    const-string p2, ","

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lcom/sunia/HTREnginev2/tmo;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    :try_start_0
    new-instance v12, Lcom/sunia/HTREnginev2/tmo;

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v12, v1, v6, v7}, Lcom/sunia/HTREnginev2/tmo;-><init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lorg/apache/xerces/util/SymbolTable;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "EmptyTargetNamespace"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iput-object v3, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    :cond_1
    const/4 v6, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_5

    if-eqz v5, :cond_3

    if-ne v5, v14, :cond_2

    goto :goto_0

    :cond_2
    if-eq v5, v6, :cond_7

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-eq v4, v6, :cond_7

    sget-object v2, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N0:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v13

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_3
    :goto_0
    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v6, :cond_4

    iput-object v4, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    iput-boolean v14, v12, Lcom/sunia/HTREnginev2/tmo;->i:Z

    goto :goto_1

    :cond_4
    if-eq v4, v6, :cond_7

    sget-object v2, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N0:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v13

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_5
    iget-object v7, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-eqz v7, :cond_7

    if-ne v5, v6, :cond_6

    invoke-virtual {v2, v7}, Lorg/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object v2, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N0:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v14

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_7
    :goto_1
    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lcom/sunia/HTREnginev2/tmo;->a(Ljava/lang/String;)V

    const/4 v15, 0x2

    if-eqz p4, :cond_9

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v5, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v5, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {v0, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object v2, v5

    :cond_8
    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q0(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_d

    if-ne v5, v14, :cond_a

    goto :goto_3

    :cond_a
    iget-boolean v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    if-eqz v6, :cond_b

    if-ne v5, v15, :cond_b

    invoke-virtual {v0, v2, v13}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v5, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/xerces/impl/xs/XSDDescription;->makeClone()Lorg/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Lorg/apache/xerces/util/SymbolTable;)V

    goto :goto_2

    :cond_b
    new-instance v5, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/xerces/impl/xs/XSDDescription;->makeClone()Lorg/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Lorg/apache/xerces/util/SymbolTable;)V

    :goto_2
    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_c
    move-object v2, v5

    goto :goto_4

    :cond_d
    :goto_3
    iget-object v2, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v5, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    :goto_4
    iget-object v5, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y:Ljava/util/Hashtable;

    invoke-virtual {v5, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object/from16 v16, v3

    move-object v11, v6

    :goto_5
    if-nez v11, :cond_e

    goto/16 :goto_10

    :cond_e
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v14, v11

    goto/16 :goto_d

    :cond_f
    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "annotation?"

    const-string v9, "s4s-elt-must-match.1"

    if-eqz v7, :cond_1f

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v7, v11, v14, v12}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v7

    sget v17, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v17, v7, v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    sget v17, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v17, v7, v17

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_10

    iget-object v15, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v15, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_10
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v15

    if-eqz v15, :cond_12

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v14, 0x1

    invoke-virtual {v6, v15, v7, v14, v12}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_6

    :cond_11
    filled-new-array {v10, v8, v14}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v11}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_6
    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-static {v15}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v10, v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v11}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_7

    :cond_12
    invoke-static {v11}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v14, 0x1

    move-object v15, v7

    move-object v7, v11

    move-object v9, v15

    move-object v1, v10

    move v10, v14

    move-object v14, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_8

    :cond_13
    :goto_7
    move-object v15, v7

    move-object v1, v10

    move-object v14, v11

    :goto_8
    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v6, v15, v12}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-ne v13, v6, :cond_15

    if-eqz v13, :cond_14

    const-string v1, "src-import.1.1"

    goto :goto_9

    :cond_14
    const-string v1, "src-import.1.2"

    :goto_9
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_a
    const/4 v15, 0x2

    goto/16 :goto_d

    :cond_15
    invoke-virtual {v12, v13}, Lcom/sunia/HTREnginev2/tmo;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-boolean v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    if-nez v6, :cond_17

    iget-boolean v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-nez v6, :cond_17

    goto :goto_a

    :cond_16
    invoke-virtual {v12, v13}, Lcom/sunia/HTREnginev2/tmo;->a(Ljava/lang/String;)V

    :cond_17
    iget-object v6, v12, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    if-nez v7, :cond_18

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r:Ljava/util/Hashtable;

    invoke-virtual {v8, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    invoke-virtual {v7, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    :cond_18
    invoke-virtual {v7, v13}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_b

    :cond_19
    :goto_c
    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Lorg/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v3}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v13}, Lorg/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    iget-boolean v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    if-eqz v6, :cond_1d

    iget-boolean v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-eqz v7, :cond_1b

    :try_start_1
    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v7, 0x1

    goto :goto_e

    :cond_1b
    iget-boolean v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    :goto_d
    const/4 v11, 0x0

    goto/16 :goto_1a

    :catch_0
    :cond_1d
    const/4 v7, 0x0

    :goto_e
    iget-object v8, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    if-nez v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_f

    :cond_1e
    const/4 v6, 0x0

    :goto_f
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v14, v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I0(Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;Z)Lorg/w3c/dom/Element;

    move-result-object v16

    move v11, v9

    move-object/from16 v6, v16

    move v9, v7

    goto/16 :goto_18

    :cond_1f
    move-object v1, v10

    move-object v14, v11

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_11

    :cond_20
    :goto_10
    iget-object v0, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    invoke-virtual {v0, v12, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :cond_21
    :goto_11
    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x1

    invoke-virtual {v7, v14, v10, v12}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object v13

    sget v7, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v7, v13, v7

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A:Ljava/util/Hashtable;

    new-instance v10, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v11, v12, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v10, v11}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-virtual {v7, v14, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v13, v7, v12}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_12

    :cond_23
    filled-new-array {v1, v8, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_12
    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v9, v3, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_14

    :cond_24
    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_26

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v10, 0x1

    move-object v7, v14

    move-object v9, v13

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_14

    :cond_25
    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    :goto_13
    if-nez v3, :cond_30

    :cond_26
    :goto_14
    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v13, v12}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    if-nez v17, :cond_27

    const-string v3, "<include> or <redefine>"

    const-string v6, "schemaLocation"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "s4s-att-must-appear"

    invoke-virtual {v0, v6, v3, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_27
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0(Lorg/w3c/dom/Element;)Z

    move-result v9

    const/4 v3, 0x1

    goto :goto_15

    :cond_28
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_15
    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v3}, Lorg/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v4}, Lorg/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v9, v14, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K0(Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;Z)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v6

    iget-boolean v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-eqz v7, :cond_29

    if-nez v3, :cond_29

    :try_start_2
    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v11, 0x0

    :try_start_3
    invoke-static {v3, v7, v11}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_16

    :catch_1
    :cond_29
    const/4 v11, 0x0

    :catch_2
    move v3, v11

    :goto_16
    if-nez v3, :cond_2a

    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v6, v3, v9, v14}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J0(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v16

    goto :goto_17

    :cond_2a
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    :goto_17
    move v9, v11

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    :goto_18
    iget-boolean v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    if-eqz v7, :cond_2c

    if-nez v6, :cond_2b

    const/4 v3, 0x0

    goto :goto_19

    :cond_2b
    iget-object v3, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y:Ljava/util/Hashtable;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/tmo;

    goto :goto_19

    :cond_2c
    iget-object v7, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v6, v3, v7, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lcom/sunia/HTREnginev2/tmo;

    move-result-object v3

    :goto_19
    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz v3, :cond_2d

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    if-eqz v6, :cond_2f

    if-eqz v3, :cond_2e

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2e
    const/16 v16, 0x0

    goto :goto_1a

    :cond_2f
    move-object/from16 v16, v6

    :goto_1a
    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    move v13, v11

    const/4 v3, 0x0

    const/4 v14, 0x1

    move-object v11, v1

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_30
    const/4 v11, 0x0

    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/4 v10, 0x1

    invoke-virtual {v6, v3, v13, v10, v12}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v3, v6}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_1b

    :cond_31
    const/4 v10, 0x1

    invoke-static {v14}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_32

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    const/16 v18, 0x1

    move-object v7, v14

    move-object v9, v13

    move/from16 v19, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_1c

    :cond_32
    :goto_1b
    move/from16 v19, v10

    move/from16 v18, v11

    :goto_1c
    invoke-static {v3}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    goto/16 :goto_13

    :catch_3
    sget-object v1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O0:[Ljava/lang/String;

    aget-object v1, v1, v5

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p0, v3

    :goto_1
    if-lt p0, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p0, 0x1

    invoke-interface {v5, v0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final d0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)Lcom/sunia/HTREnginev2/tmo;
    .locals 0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public final e(Lorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSDDescription;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0(Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getType()S

    move-result p2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq p2, v1, :cond_a

    const/4 v3, 0x2

    if-eq p2, v3, :cond_8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6

    const/4 v1, 0x5

    if-eq p2, v1, :cond_4

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_1
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p2

    if-nez p2, :cond_c

    check-cast p1, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, p1

    check-cast p2, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_3
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p2

    if-nez p2, :cond_c

    check-cast p1, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, p1

    check-cast p2, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_5
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-nez p2, :cond_c

    check-cast p1, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    check-cast p1, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_7
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_c

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    check-cast p1, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getScope()S

    move-result p2

    if-ne p2, v1, :cond_c

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_9
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p2

    if-nez p2, :cond_c

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    check-cast p1, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getScope()S

    move-result p2

    if-ne p2, v1, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_b
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-nez p2, :cond_c

    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public final e0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p0
.end method

.method public element2Locator(Lorg/w3c/dom/Element;)Lorg/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public element2Locator(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/util/SimpleLocator;)Z
    .locals 6

    .line 2
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v5

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final f(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 4

    new-instance v0, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->N0(Ljava/util/Hashtable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/XSObject;

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e(Lorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSDDescription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final f0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GrammarConflict"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-object v0
.end method

.method public g(Lorg/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final g0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    return-object p0
.end method

.method public getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    if-ne p2, v1, :cond_0

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, p3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tmo;->f(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "src-resolve.4.1"

    const-string v3, "src-resolve.4.2"

    if-nez v0, :cond_2

    iget-object v0, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tmo;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    iget-object v5, p1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v4, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const-string v4, "src-resolve"

    const/4 v5, 0x0

    if-nez v0, :cond_4

    iget-object p1, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object p3, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P0:[Ljava/lang/String;

    aget-object p2, p3, p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_3
    return-object v5

    :cond_4
    iget-object v6, p3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, v6}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const-string v8, ","

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v8, :cond_6

    if-eqz v6, :cond_7

    return-object v6

    :cond_6
    invoke-virtual {p0, v7, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    return-object v8

    :cond_7
    packed-switch p2, :pswitch_data_0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "XSDHandler asked to locate component of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, "; it does not recognize this type!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Internal-Error"

    invoke-virtual {p0, v8, v7, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v7, v5

    goto :goto_3

    :pswitch_0
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_2
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_3
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->k:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_4
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_5
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i:Ljava/util/Hashtable;

    goto :goto_2

    :pswitch_6
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h:Ljava/util/Hashtable;

    :goto_2
    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/HTREnginev2/tmo;

    :goto_3
    if-nez v5, :cond_9

    if-nez v6, :cond_8

    iget-object p1, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object p3, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P0:[Ljava/lang/String;

    aget-object p2, p3, p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_8
    return-object v6

    :cond_9
    invoke-virtual {p0, p1, v5, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0(Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)Lcom/sunia/HTREnginev2/tmo;

    move-result-object v4

    if-nez v4, :cond_c

    if-nez v6, :cond_b

    iget-object p2, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v3

    :goto_4
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_b
    return-object v6

    :cond_c
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v5, p1}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-nez v6, :cond_e

    sget-object p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q0:[Ljava/lang/String;

    aget-object p1, p1, p2

    if-ne p2, v1, :cond_d

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p1, "ct-props-correct.3"

    :cond_d
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_e
    return-object v6

    :cond_f
    invoke-virtual {p0, p2, v5, v4, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->traverseGlobalDecl(ILorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 2
    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j0(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->i0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->g0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGlobalDeclFromGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGlobalDeclFromGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3, p4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIDRegistry()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e:Ljava/util/Hashtable;

    return-object p0
.end method

.method public getIDRegistry_sub()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l:Ljava/util/Hashtable;

    return-object p0
.end method

.method public final h(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v5

    move p0, v2

    :goto_1
    if-lt p0, v5, :cond_0

    return-void

    :cond_0
    invoke-interface {v4, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p0, 0x1

    invoke-interface {v4, v0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p2, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final h0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    return-object p0
.end method

.method public i(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final i0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    return-object p0
.end method

.method public final j(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p0, v3

    :goto_1
    if-lt p0, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p0, 0x1

    invoke-interface {v5, v0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V

    goto :goto_2

    :cond_3
    if-eq v5, v6, :cond_4

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final j0(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public k(Lorg/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public k0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p0, v3

    :goto_1
    if-lt p0, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p0, 0x1

    invoke-interface {v5, v0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public l0(ILorg/apache/xerces/xni/QName;Lcom/sunia/HTREnginev2/tmo;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const-string v1, ","

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    return-object v4

    :cond_1
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C:Ljava/util/Hashtable;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->B:Ljava/util/Hashtable;

    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Lorg/apache/xerces/xni/QName;

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_4

    move-object v0, v4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v5, v6, v7, v8, v0}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, v5, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sunia/HTREnginev2/tmo;ILorg/apache/xerces/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "src-redefine.6.2.1"

    invoke-virtual {p0, p2, p1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_6
    iget-object p1, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "src-redefine.7.2.1"

    invoke-virtual {p0, p2, p1, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    return-object v4

    :cond_7
    return-object p3
.end method

.method public m(Lorg/apache/xerces/xs/XSTypeDefinition;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final m0(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p0
.end method

.method public final n(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lorg/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p0, v3

    :goto_1
    if-lt p0, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, p0, 0x1

    invoke-interface {v5, v0}, Lorg/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    if-nez v6, :cond_4

    invoke-interface {v5}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final n0(Ljava/lang/String;Lorg/apache/xerces/util/DOMInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 10

    invoke-virtual {p2}, Lorg/apache/xerces/util/DOMInputSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v4, v2, :cond_2

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :cond_2
    move-object v0, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v0, :cond_8

    const/4 v6, 0x3

    if-eq p4, v6, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-ne v4, v1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_4

    move v5, v2

    :cond_4
    move v4, v5

    :cond_5
    if-eqz v4, :cond_7

    new-instance v3, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    invoke-direct {v3, v6, p4, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    return-object p1

    :cond_6
    move-object v6, v3

    :cond_7
    invoke-virtual {p0, v3, v6, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0(Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    move-object v3, p1

    move v6, v2

    move-object v9, v3

    goto :goto_2

    :cond_8
    move-object v9, v3

    move v6, v5

    :goto_2
    move-object v4, p0

    move v5, p3

    move-object v7, p2

    move-object v8, p5

    invoke-virtual/range {v4 .. v9}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0(ZZLorg/apache/xerces/xni/parser/XMLInputSource;Lorg/w3c/dom/Element;Ljava/io/IOException;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G(Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G(Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void
.end method

.method public final o0(Ljava/lang/String;Lorg/apache/xerces/util/SAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 9

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p2}, Lorg/apache/xerces/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/xerces/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v6

    if-eqz v6, :cond_7

    :cond_0
    const/4 v6, 0x3

    if-eq p4, v6, :cond_1

    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    invoke-direct {v7, v6, p4, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    return-object p1

    :cond_1
    move-object v6, v4

    move-object v7, v6

    :cond_2
    const-string p1, "http://xml.org/sax/features/namespace-prefixes"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p4
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    move-object v1, p4

    goto :goto_1

    :catch_0
    :try_start_3
    new-instance p4, Lorg/apache/xerces/parsers/SAXParser;

    invoke-direct {p4}, Lorg/apache/xerces/parsers/SAXParser;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-interface {v1, p1, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    instance-of p1, v1, Lorg/apache/xerces/parsers/SAXParser;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {v1, v0, p1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_1
    :cond_4
    move p1, v5

    goto :goto_2

    :catch_2
    move p1, v3

    :goto_2
    :try_start_6
    const-string p4, "http://xml.org/sax/features/string-interning"

    invoke-interface {v1, p4}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_3
    :try_start_7
    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0:Lcom/sunia/HTREnginev2/a2m;

    if-nez p4, :cond_5

    new-instance p4, Lcom/sunia/HTREnginev2/a2m;

    invoke-direct {p4}, Lcom/sunia/HTREnginev2/a2m;-><init>()V

    iput-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0:Lcom/sunia/HTREnginev2/a2m;

    :cond_5
    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0:Lcom/sunia/HTREnginev2/a2m;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p4, v0, v8, p1, v3}, Lcom/sunia/HTREnginev2/a2m;->g(Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;Lorg/apache/xerces/util/SymbolTable;ZZ)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0:Lcom/sunia/HTREnginev2/a2m;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :try_start_9
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0:Lcom/sunia/HTREnginev2/a2m;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/a2m;->f()Lorg/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v4

    :cond_6
    invoke-virtual {p0, v7, v6, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0(Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_9
    .catch Lorg/xml/sax/SAXParseException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    move-object v4, p1

    move v2, v5

    goto :goto_3

    :catch_6
    move-exception p0

    invoke-static {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$a;->b(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;

    move-result-object p0

    throw p0

    :catch_7
    move-exception p0

    invoke-static {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$a;->a(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object p0

    throw p0

    :cond_7
    move v2, v3

    :goto_3
    move-object v5, v4

    move-object v0, p0

    move v1, p3

    move-object v3, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0(ZZLorg/apache/xerces/xni/parser/XMLInputSource;Lorg/w3c/dom/Element;Ljava/io/IOException;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/util/Vector;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    iget-boolean v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final p0(Ljava/lang/String;Lorg/apache/xerces/util/StAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/xerces/util/StAXInputSource;->shouldConsumeRemainingContent()Z

    move-result v0

    invoke-virtual {p2}, Lorg/apache/xerces/util/StAXInputSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/xerces/util/StAXInputSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p4, v3, :cond_4

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    move v6, v5

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v6

    invoke-interface {v6}, Ljavax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v0

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    new-instance v6, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    invoke-direct {v6, v3, p4, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    return-object p1

    :cond_3
    move-object v6, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    move-object v6, v3

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    if-nez p1, :cond_6

    new-instance p1, Lcom/sunia/HTREnginev2/gxm;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/gxm;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    :cond_6
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    iget-object p4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p1, p4, v5}, Lcom/sunia/HTREnginev2/gxm;->n(Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;Lorg/apache/xerces/util/SymbolTable;)V

    if-eqz v1, :cond_8

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/gxm;->m(Ljavax/xml/stream/XMLStreamReader;)V

    if-eqz v0, :cond_a

    :goto_2
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    invoke-virtual {p1, v2}, Lcom/sunia/HTREnginev2/gxm;->l(Ljavax/xml/stream/XMLEventReader;)V

    if-eqz v0, :cond_a

    :goto_3
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    goto :goto_3

    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->c0:Lcom/sunia/HTREnginev2/gxm;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/gxm;->k()Lorg/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v4

    :cond_b
    invoke-virtual {p0, v6, v3, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0(Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :goto_5
    move-object v5, p1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object p4

    instance-of v0, p4, Ljava/io/IOException;

    if-eqz v0, :cond_c

    move-object p1, p4

    check-cast p1, Ljava/io/IOException;

    goto :goto_5

    :goto_6
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p3

    move-object v3, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0(ZZLorg/apache/xerces/xni/parser/XMLInputSource;Lorg/w3c/dom/Element;Ljava/io/IOException;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {p0}, Lorg/apache/xerces/util/StAXLocationWrapper;-><init>()V

    invoke-virtual {p1}, Ljavax/xml/stream/XMLStreamException;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    new-instance p2, Lorg/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lorg/apache/xerces/xni/parser/XMLParseException;-><init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public parseSchema(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t:Ljava/util/Hashtable;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->resetNodePool()V

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eq p3, v8, :cond_4

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {p0, p2, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v0(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {p0, p2, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object v0

    :catch_0
    :cond_2
    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v9, v0

    goto :goto_1

    :cond_4
    move-object v1, v7

    move-object v9, v1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->z0()V

    instance-of v0, p1, Lorg/apache/xerces/util/DOMInputSource;

    const/4 v10, 0x1

    if-eqz v0, :cond_6

    move-object v2, p1

    check-cast v2, Lorg/apache/xerces/util/DOMInputSource;

    if-ne p3, v8, :cond_5

    move v3, v10

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0(Ljava/lang/String;Lorg/apache/xerces/util/DOMInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_6
    instance-of v0, p1, Lorg/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_8

    move-object v2, p1

    check-cast v2, Lorg/apache/xerces/util/SAXInputSource;

    if-ne p3, v8, :cond_7

    move v3, v10

    goto :goto_3

    :cond_7
    move v3, v6

    :goto_3
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0(Ljava/lang/String;Lorg/apache/xerces/util/SAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_8
    instance-of v0, p1, Lorg/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_a

    move-object v2, p1

    check-cast v2, Lorg/apache/xerces/util/StAXInputSource;

    if-ne p3, v8, :cond_9

    move v3, v10

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0(Ljava/lang/String;Lorg/apache/xerces/util/StAXInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_a
    instance-of v0, p1, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r0(Lorg/apache/xerces/impl/xs/util/XSInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_b
    if-ne p3, v8, :cond_c

    move v3, v10

    goto :goto_5

    :cond_c
    move v3, v6

    :goto_5
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_f

    instance-of p2, p1, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz p2, :cond_e

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XSInputSource;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XSInputSource;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    if-eqz p2, :cond_d

    array-length p3, p2

    if-lez p3, :cond_d

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object p1, p2, v6

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XSInputSource;->getComponents()[Lorg/apache/xerces/xs/XSObject;

    move-result-object p1

    if-eqz p1, :cond_e

    array-length p2, p1

    if-lez p2, :cond_e

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object p1, p1, v6

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_e
    :goto_8
    return-object v9

    :cond_f
    if-ne p3, v8, :cond_13

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-object v1, v7

    :goto_9
    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {p0, p2, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_12

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-eqz v3, :cond_11

    if-eqz v2, :cond_12

    invoke-virtual {v9}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    return-object v9

    :cond_12
    new-instance v3, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    invoke-direct {v3, v2, p3, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {p3, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_13

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A0()V

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz v9, :cond_14

    move p3, v10

    goto :goto_a

    :cond_14
    move p3, v6

    :goto_a
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lcom/sunia/HTREnginev2/tmo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    if-nez p1, :cond_15

    return-object v7

    :cond_15
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->buildGlobalNameRegistries()V

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    if-eqz p1, :cond_16

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    invoke-virtual {p0, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->traverseSchemas(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M0()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->resolveKeyRefs()V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v10

    :goto_b
    if-gez p1, :cond_18

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    if-eqz p1, :cond_17

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    invoke-virtual {p0, v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S0(Ljava/util/ArrayList;)V

    :cond_17
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0

    :cond_18
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->r:Ljava/util/Hashtable;

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Vector;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    if-nez p2, :cond_19

    goto :goto_d

    :cond_19
    move v0, v6

    move v1, v0

    :goto_c
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1a

    invoke-virtual {p3, v1}, Ljava/util/Vector;->setSize(I)V

    invoke-virtual {p2, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    :goto_d
    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_1a
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_1b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v1, v3

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w0:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final q0(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v3, 0x3

    if-eq p4, v3, :cond_1

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    invoke-direct {v3, v0, p4, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    return-object p1

    :cond_1
    move-object v0, v1

    move-object v3, v0

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, v3, v0, v1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s0(Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    move-object v1, p1

    move-object v8, v1

    move v5, v2

    goto :goto_0

    :cond_4
    move v5, v0

    move-object v8, v1

    :goto_0
    move-object v3, p0

    move v4, p3

    move-object v6, p2

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->t0(ZZLorg/apache/xerces/xni/parser/XMLInputSource;Lorg/w3c/dom/Element;Ljava/io/IOException;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lorg/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final r0(Lorg/apache/xerces/impl/xs/util/XSInputSource;Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/w3c/dom/Element;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XSInputSource;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M([Lorg/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;

    move-result-object p1

    iget-boolean v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->K(Ljava/util/Vector;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p(Ljava/util/Vector;)V

    if-ne v1, v3, :cond_3

    aget-object p0, v0, v2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XSInputSource;->getComponents()[Lorg/apache/xerces/xs/XSObject;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L([Lorg/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    if-nez v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A(Ljava/util/Vector;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->f(Ljava/util/Vector;Ljava/util/Hashtable;)V

    if-ne v1, v3, :cond_3

    aget-object p0, p1, v2

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10

    const-string v0, "http://apache.org/xml/properties/security-manager"

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v3, "http://apache.org/xml/features/allow-java-encodings"

    const-string v4, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v5, "http://apache.org/xml/properties/locale"

    const-string v6, "http://apache.org/xml/properties/internal/error-handler"

    const-string v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/SymbolTable;

    iput-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    const-string v7, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->J:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v7, :cond_0

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v8, v7}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    const-string v7, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    invoke-virtual {v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v8, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_3

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    if-eqz v7, :cond_1

    move-object v9, v7

    goto :goto_0

    :cond_1
    new-instance v9, Lorg/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v9}, Lorg/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_0
    invoke-virtual {v8, v6, v9}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Lorg/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v7}, Lorg/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_1
    invoke-virtual {v8, v6, v7}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v7, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_4

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v7, v5, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d0:Lorg/apache/xerces/parsers/XML11Configuration;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "http://apache.org/xml/features/validate-annotations"

    invoke-interface {p1, v6}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E:Z

    :goto_2
    :try_start_2
    const-string v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-interface {p1, v6}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->F:Z

    :goto_3
    :try_start_3
    const-string v6, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v6}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    :goto_4
    :try_start_4
    const-string v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-interface {p1, v6}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->H:Z

    :goto_5
    :try_start_5
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->getFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_6
    :try_start_9
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_5
    return-void
.end method

.method public resolveKeyRefs()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->makeGlobal()V

    iget-object v2, v1, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->U:Lcom/sunia/HTREnginev2/qmo;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sunia/HTREnginev2/qmo;->r(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/XSElementDecl;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final s0(Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    return-object p3
.end method

.method public schemaDocument2SystemId(Lcom/sunia/HTREnginev2/tmo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setDVFactory(Lorg/apache/xerces/impl/dv/SchemaDVFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z:Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    return-void
.end method

.method public setDeclPool(Lorg/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lorg/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method

.method public setGenerateSyntheticAnnotations(Z)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->a0:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public storeKeyRef(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 8

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/xerces/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    const-string v2, ","

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p2, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->e:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l:Ljava/util/Hashtable;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->C(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;)V

    :cond_1
    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    iget v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/sunia/HTREnginev2/tmo;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n0:[Lorg/w3c/dom/Element;

    iget v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->p0:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aput-object p3, p1, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q0:[[Ljava/lang/String;

    iget-object p3, p2, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->o0:[Lcom/sunia/HTREnginev2/tmo;

    iget p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->m0:I

    aput-object p2, p1, p3

    return-void
.end method

.method public final t(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->resetComponents()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->h(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->d(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->j(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->n(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->l(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void
.end method

.method public final t0(ZZLorg/apache/xerces/xni/parser/XMLInputSource;Lorg/w3c/dom/Element;Ljava/io/IOException;)Lorg/w3c/dom/Element;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "schema_reference.4"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p4, p5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    if-nez p3, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    aput-object p2, p1, v0

    invoke-virtual {p0, v1, p1, p4, p5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p4, p5}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public traverseGlobalDecl(ILorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {p2, v0}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {p2}, Lorg/apache/xerces/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p3, v0}, Lcom/sunia/HTREnginev2/tmo;->c(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->I(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/f;->w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V:Lcom/sunia/HTREnginev2/rmo;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/rmo;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/d;->v(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/c;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/pmo;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q:Lorg/apache/xerces/impl/xs/traversers/b;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/b;->s(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    :goto_1
    invoke-virtual {p3}, Lcom/sunia/HTREnginev2/tmo;->i()V

    return-object v2
.end method

.method public traverseSchemas(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L0(Lcom/sunia/HTREnginev2/tmo;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->x:Lcom/sunia/HTREnginev2/tmo;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/tmo;

    iget-object v8, v1, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lorg/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v10, 0x0

    move v3, v10

    :goto_1
    if-nez v2, :cond_5

    if-nez v3, :cond_2

    invoke-static {v8}, Lorg/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tmo;->e()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/traversers/a;->p(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tmo;->d()Lcom/sunia/HTREnginev2/mmo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v8}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->I(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tmo;->j()V

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->q:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Vector;

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v10, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->A:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v4}, Lcom/sunia/HTREnginev2/tmo;->c(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lorg/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tmo;->i()V

    goto/16 :goto_5

    :cond_6
    invoke-static {v4}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v4, v6}, Lorg/apache/xerces/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    invoke-virtual {v5, v4, v1, v9}, Lcom/sunia/HTREnginev2/pmo;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto :goto_4

    :cond_7
    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->I(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_4

    :cond_8
    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    invoke-virtual {v5, v4, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/d;->v(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_4

    :cond_9
    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    invoke-virtual {v5, v4, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/f;->w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_4

    :cond_a
    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(annotation | (simpleType | complexType | group | attributeGroup))*"

    filled-new-array {v6, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "s4s-elt-must-match.1"

    invoke-virtual {p0, v6, v5, v4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_4
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Lorg/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v4

    goto :goto_3

    :cond_b
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Q:Lorg/apache/xerces/impl/xs/traversers/b;

    invoke-virtual {v4, v2, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/b;->s(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    goto/16 :goto_5

    :cond_c
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->P:Lcom/sunia/HTREnginev2/pmo;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sunia/HTREnginev2/pmo;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto/16 :goto_5

    :cond_d
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->R:Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->I(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_5

    :cond_e
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    invoke-virtual {v4, v2, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/c;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_5

    :cond_f
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->T:Lorg/apache/xerces/impl/xs/traversers/d;

    invoke-virtual {v4, v2, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/d;->v(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_5

    :cond_10
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->V:Lcom/sunia/HTREnginev2/rmo;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sunia/HTREnginev2/rmo;->q(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    goto :goto_5

    :cond_11
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->W:Lorg/apache/xerces/impl/xs/traversers/f;

    invoke-virtual {v4, v2, v1, v9}, Lorg/apache/xerces/impl/xs/traversers/f;->w(Lorg/w3c/dom/Element;Lcom/sunia/HTREnginev2/tmo;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5

    :cond_12
    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->S:Lorg/apache/xerces/impl/xs/traversers/c;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tmo;->e()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5, v1}, Lorg/apache/xerces/impl/xs/traversers/a;->m(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sunia/HTREnginev2/tmo;)Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move v3, v5

    goto :goto_5

    :cond_13
    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "s4s-elt-invalid-content.1"

    invoke-virtual {p0, v5, v4, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D0(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_5
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lorg/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public final u(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v1}, Lorg/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final u0(Lorg/apache/xerces/impl/xs/XSDDescription;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G:Z

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->makeClone()Lorg/apache/xerces/impl/xs/XSDDescription;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->L:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/XSDDescription;Lorg/apache/xerces/util/SymbolTable;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->G(Lorg/apache/xerces/impl/xs/SchemaGrammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final v(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->E(Ljava/util/Vector;Lorg/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final v0(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->M:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v2
.end method

.method public final w(Lorg/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSAttributeDeclaration;->getScope()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->O(Lorg/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w0(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->y0:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final x(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSElementDeclaration;->getScope()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->U(Lorg/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x0(Lorg/w3c/dom/Element;)Z
    .locals 1

    invoke-static {p1}, Lorg/apache/xerces/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xerces/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lorg/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_0
.end method

.method public final y(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->b0(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->Z(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public final z(Lorg/apache/xerces/xs/XSObject;Lorg/apache/xerces/impl/xs/XSDDescription;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lorg/apache/xerces/impl/xs/XSDDescription;Z)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    const/4 p2, 0x1

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getType()S

    move-result v1

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v2

    if-eq v1, p2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    const/16 v3, 0xb

    if-eq v1, v3, :cond_2

    return p2

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_5
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_7
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p0

    if-ne p0, p1, :cond_8

    return p2

    :cond_8
    return v0
.end method

.method public z0()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->v:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->w:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->u:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler;->D:Z

    return-void
.end method
