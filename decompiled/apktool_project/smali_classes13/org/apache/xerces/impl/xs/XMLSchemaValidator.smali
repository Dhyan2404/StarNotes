.class public Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lorg/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lorg/apache/xerces/impl/RevalidationHandler;
.implements Lorg/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field public static final Q0:Z = false

.field public static final R0:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field public static final S0:[Ljava/lang/Boolean;

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final T0:[Ljava/lang/String;

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field public static final U0:[Ljava/lang/Object;

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field public static final V0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final W0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field public static final X0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field public static final Y0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field public static final Z0:Ljava/util/Hashtable;

.field public static final a1:I = 0x8

.field public static final b1:I = 0x8

.field public static final c1:Z = false

.field public static final d1:I = 0x14


# instance fields
.field public final A0:Ljava/lang/StringBuffer;

.field public B0:Z

.field public C0:Z

.field public D0:[Z

.field public E0:Z

.field public F0:[Z

.field public final G0:Lorg/apache/xerces/xni/QName;

.field public H0:Ljavax/xml/namespace/QName;

.field public I0:Lorg/apache/xerces/xs/XSTypeDefinition;

.field public J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public J0:Ljavax/xml/namespace/QName;

.field public K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public L0:I

.field public M0:Z

.field public N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

.field public O:Z

.field public O0:Lorg/apache/xerces/impl/validation/ValidationState;

.field public P0:Lorg/apache/xerces/impl/validation/ValidationState;

.field public Q:[Z

.field public Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

.field public e:Ljava/lang/String;

.field public f:Lorg/apache/xerces/xni/XMLLocator;

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lorg/apache/xerces/util/AugmentationsImpl;

.field protected fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

.field protected fDefaultValue:Lorg/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field protected fEntityRef:Z

.field protected fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field protected fFullChecking:Z

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fIdConstraint:Z

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field protected fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field protected fNamespaceGrowth:Z

.field protected fNormalizeData:Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field protected final fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field public final g:Lorg/apache/xerces/xni/XMLString;

.field public final h:Lorg/apache/xerces/xni/XMLString;

.field public i:Z

.field public j:Z

.field public k:S

.field public k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

.field public l:Z

.field public final m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

.field public final n:Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field public final o:Lorg/apache/xerces/impl/dv/XSSimpleType;

.field public final p:Lorg/apache/xerces/impl/xs/models/CMNodeFactory;

.field public final q:Lorg/apache/xerces/impl/xs/models/CMBuilder;

.field public q0:Lorg/apache/xerces/xs/XSTypeDefinition;

.field public final r:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

.field public s:Ljava/lang/String;

.field public t:I

.field public t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

.field public u:I

.field public u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

.field public v:I

.field public v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

.field public w:I

.field public w0:[I

.field public x:Z

.field public x0:[[I

.field public y:[Z

.field public y0:Z

.field public z:Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public z0:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/validation/schema"

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    const-string v3, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v4, "http://apache.org/xml/features/allow-java-encodings"

    const-string v5, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v6, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v7, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v8, "http://apache.org/xml/features/validate-annotations"

    const-string v9, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v10, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    const-string v11, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    const-string v12, "http://apache.org/xml/features/validation/id-idref-checking"

    const-string v13, "http://apache.org/xml/features/validation/identity-constraint-checking"

    const-string v14, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    const-string v15, "http://apache.org/xml/features/namespace-growth"

    const-string v16, "http://apache.org/xml/features/internal/tolerate-duplicates"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->R0:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->S0:[Ljava/lang/Boolean;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v6, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v7, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v8, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v11, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    const-string v12, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    const-string v13, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->T0:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->U0:[Ljava/lang/Object;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    sput-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->V0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    sput-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->W0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    sput-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->X0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Y0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z0:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    new-instance v0, Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lorg/apache/xerces/util/AugmentationsImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v3, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    new-instance v4, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v4}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    new-instance v4, Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/xerces/xni/XMLString;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v0, v5}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->g:Lorg/apache/xerces/xni/XMLString;

    new-instance v4, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v4}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->i:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->j:Z

    iput-short v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    new-instance v4, Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance v5, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v5, p0}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lorg/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->n:Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

    sget-object v6, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v7, "QName"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->o:Lorg/apache/xerces/impl/dv/XSSimpleType;

    new-instance v6, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v6}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->p:Lorg/apache/xerces/impl/xs/models/CMNodeFactory;

    new-instance v7, Lorg/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {v7, v6}, Lorg/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lorg/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v7, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q:Lorg/apache/xerces/impl/xs/models/CMBuilder;

    new-instance v6, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v3, v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v6, v3, v4, v5, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/impl/xs/XSGrammarBucket;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;Lorg/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->r:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const/16 v3, 0x8

    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    new-array v4, v3, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    new-array v4, v3, [Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    new-array v4, v3, [Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    new-array v4, v3, [Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v4, v3, [[I

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    new-array v1, v3, [Z

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    new-array v1, v3, [Z

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    new-instance v1, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O0:Lorg/apache/xerces/impl/validation/ValidationState;

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->P0:Lorg/apache/xerces/impl/validation/ValidationState;

    new-instance v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    new-instance v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->P0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    return-void
.end method

.method public static synthetic o(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    return p0
.end method

.method public static synthetic p(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method


# virtual methods
.method public A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-interface {p1}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    :cond_0
    const-string v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    return-object p1
.end method

.method public B(Lorg/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    const-string v1, ","

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.3.1"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.3.2.2"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public C(Lorg/apache/xerces/xni/XMLString;)Lorg/apache/xerces/xni/XMLString;
    .locals 6

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    if-ltz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K(Lorg/apache/xerces/xni/XMLString;Z)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    :cond_4
    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v5, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    if-ne v0, v3, :cond_8

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    :goto_2
    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v3

    if-lt v0, v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-object p1
.end method

.method public D()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    :cond_0
    return-void
.end method

.method public E(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 12

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-ne v0, p1, :cond_0

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    :goto_0
    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->n:Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q:Lorg/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lorg/apache/xerces/impl/xs/XSGrammarBucket;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;Lorg/apache/xerces/impl/xs/models/CMBuilder;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M(Lorg/apache/xerces/xni/QName;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    :goto_1
    if-gez v3, :cond_9

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    :cond_4
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v4

    move p1, v0

    :goto_2
    const/4 v3, 0x2

    if-ge p1, v4, :cond_7

    :goto_3
    if-ge v0, v4, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    goto/16 :goto_9

    :cond_5
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    instance-of v5, p1, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v5, :cond_6

    check-cast p1, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v6

    if-ne v6, v3, :cond_6

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result p1

    invoke-virtual {v6, v5, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p1

    if-eqz p1, :cond_6

    iget v5, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v6, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne v5, v6, :cond_6

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v5, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v5

    instance-of v6, v5, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v6, :cond_8

    check-cast v5, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v7

    if-eq v7, v3, :cond_8

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v5

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_a

    const/4 v8, 0x0

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v10, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v11, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    :goto_4
    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLorg/apache/xerces/xs/ShortList;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v8

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    if-nez v4, :cond_b

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_5

    :cond_b
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :goto_5
    iget-object v6, v6, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object v9, v6

    if-nez v4, :cond_c

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_6

    :cond_c
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :goto_6
    iget-short v6, v6, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move v10, v6

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_7

    :cond_d
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :goto_7
    iget-object v4, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    move-object v11, v4

    goto :goto_4

    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_e
    :goto_9
    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    if-ge p1, v0, :cond_f

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    :cond_f
    const/4 v0, 0x0

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/util/Iterator;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    if-eqz p1, :cond_11

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_b

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cvc-id.1"

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    :goto_b
    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->n:Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q:Lorg/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v1, v3, v4}, Lorg/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lorg/apache/xerces/impl/xs/XSGrammarBucket;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;Lorg/apache/xerces/impl/xs/models/CMBuilder;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :cond_12
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_14

    :goto_c
    array-length v1, p1

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1, p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_d

    :cond_13
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    :goto_d
    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v(Z[Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    goto :goto_e

    :cond_15
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v(Z[Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p1

    iget p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    sub-int/2addr p2, v2

    iput p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    aget-boolean v2, v2, p2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, p2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    aget-boolean v2, v2, p2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    aget-object v2, v2, p2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    aget-object v2, v2, p2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget-object v2, v2, p2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    aget-boolean v2, v2, p2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    aget-object v2, v2, p2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    aget-boolean v2, v2, p2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    aget-boolean p2, v2, p2

    iput-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    move-object p0, p1

    :goto_e
    return-object p0
.end method

.method public F(Lorg/apache/xerces/xni/XMLString;)V
    .locals 0

    return-void
.end method

.method public G(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    :cond_0
    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    :cond_1
    return-void
.end method

.method public H(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    :cond_0
    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-interface {v8, v0, v2}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->T(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    if-ltz v0, :cond_3

    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    add-int/2addr v0, v10

    iput v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_2

    invoke-virtual {v6, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v15, 0x0

    if-eqz v0, :cond_c

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->n:Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-interface {v0, v7, v1, v2}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    aget v2, v1, v15

    if-ne v2, v11, :cond_d

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v2, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v2, :cond_9

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v2, v1}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v6, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    invoke-interface {v2, v3}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    iget-object v3, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "{\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    :goto_1
    const-string v4, "cvc-complex-type.2.4.a"

    if-eqz v2, :cond_8

    aget v5, v2, v15

    aget v14, v2, v10

    aget v15, v2, v12

    if-ge v15, v5, :cond_6

    sub-int v1, v5, v15

    if-le v1, v10, :cond_5

    iget-object v3, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v13

    invoke-interface {v4, v2}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v2, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cvc-complex-type.2.4.h"

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v13

    invoke-interface {v3, v2}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cvc-complex-type.2.4.g"

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-lt v15, v14, :cond_7

    if-eq v14, v11, :cond_7

    iget-object v2, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cvc-complex-type.2.4.e"

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    invoke-interface {v1, v2}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v1

    const-string v2, "cvc-complex-type.2.4.d"

    if-eqz v1, :cond_b

    aget v3, v1, v10

    aget v4, v1, v12

    if-lt v4, v3, :cond_a

    if-eq v3, v11, :cond_a

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget v1, v1, v13

    invoke-interface {v2, v1}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cvc-complex-type.2.4.f"

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    iget-object v1, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    iget-object v1, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_2
    iget v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-eq v1, v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w()V

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    iget v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    aput-boolean v10, v1, v2

    const/4 v1, 0x0

    iput-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    iget-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    iget-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    iget-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    iget-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    aput-boolean v3, v1, v2

    :cond_e
    iget v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    add-int/2addr v1, v10

    iput v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    const/4 v1, 0x0

    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    const/4 v2, 0x0

    iput-boolean v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    iput-boolean v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    if-eqz v0, :cond_10

    instance-of v1, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_3

    :cond_f
    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v14, v1

    goto :goto_4

    :cond_10
    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_12

    iget-short v0, v14, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v12, :cond_12

    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_11

    invoke-virtual {v6, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_5

    :cond_11
    move-object v0, v9

    :goto_5
    return-object v0

    :cond_12
    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-nez v0, :cond_16

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_13

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v6, v0, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/xni/QName;)V

    goto :goto_6

    :cond_13
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_14

    invoke-virtual {v6, v0, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O(Ljavax/xml/namespace/QName;Lorg/apache/xerces/xni/QName;)V

    goto :goto_6

    :cond_14
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_15

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    goto :goto_6

    :cond_15
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_16

    invoke-virtual {v6, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->P(Ljavax/xml/namespace/QName;)V

    :cond_16
    :goto_6
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_18

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_17

    const/4 v1, 0x5

    iget-object v2, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_17
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    :cond_18
    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    if-ne v0, v1, :cond_19

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-nez v2, :cond_19

    add-int/2addr v1, v10

    iput v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    :cond_19
    iget v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    if-lt v0, v1, :cond_1a

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_1a
    const/4 v1, 0x0

    :goto_7
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_22

    if-nez v1, :cond_22

    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-nez v0, :cond_20

    iget-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-eqz v1, :cond_1b

    goto :goto_8

    :cond_1b
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "cvc-elt.1.a"

    invoke-virtual {v0, v2, v3, v1, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_a

    :cond_1c
    :goto_8
    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v1, :cond_1e

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v0}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1d

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_1d
    const/4 v0, -0x2

    iput v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    return-object v9

    :cond_1e
    iput v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_1f

    invoke-virtual {v6, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_9

    :cond_1f
    move-object v0, v9

    :goto_9
    return-object v0

    :cond_20
    if-eqz v14, :cond_21

    iget-short v0, v14, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v10, :cond_21

    iget-object v0, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-complex-type.2.4.c"

    invoke-virtual {v6, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_a
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v0, 0x0

    iput-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    iget v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    iput-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    goto :goto_d

    :cond_22
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    if-eqz v1, :cond_24

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v6, v7, v1, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_24

    if-nez v0, :cond_23

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_23
    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    :cond_24
    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v12, :cond_25

    goto :goto_b

    :cond_25
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_26

    :goto_b
    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    goto :goto_d

    :cond_26
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    if-ne v0, v10, :cond_27

    move v1, v10

    goto :goto_c

    :cond_27
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    :goto_d
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-elt.2"

    invoke-virtual {v6, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    if-nez v0, :cond_29

    iget-object v0, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s:Ljava/lang/String;

    :cond_29
    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_2a

    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->j:Z

    iput-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    iput-short v11, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    goto :goto_e

    :cond_2a
    const/4 v0, 0x0

    :goto_e
    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2d

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cvc-type.2"

    invoke-virtual {v6, v4, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_2f

    iget-short v3, v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    if-ne v3, v10, :cond_2f

    iget-object v3, v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v3

    if-ne v3, v13, :cond_2c

    goto :goto_10

    :cond_2c
    :try_start_0
    iget-object v1, v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v1

    :goto_f
    iput-short v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :cond_2d
    iget-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_2f

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v3

    if-ne v3, v13, :cond_2e

    :goto_10
    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    goto :goto_11

    :cond_2e
    :try_start_1
    invoke-interface {v1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v1
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :catch_0
    :cond_2f
    :goto_11
    const/4 v1, 0x0

    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    if-ne v3, v2, :cond_30

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v4, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q:Lorg/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lorg/apache/xerces/impl/xs/models/CMBuilder;)Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v3

    iput-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_30
    iput-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v3, :cond_31

    invoke-interface {v3}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v3

    iput-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    :cond_31
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-interface {v8, v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v4, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_32

    invoke-virtual {v6, v7, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B(Lorg/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    :cond_32
    iget-object v3, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    if-ne v3, v2, :cond_33

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v14

    goto :goto_12

    :cond_33
    move-object v14, v1

    :goto_12
    iget-boolean v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z

    if-eqz v1, :cond_34

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_34

    iget v2, v1, Lorg/apache/xerces/impl/xs/XSElementDecl;->g:I

    if-lez v2, :cond_34

    iput-boolean v10, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v2, v1, v6}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/identity/FieldActivator;)V

    :cond_34
    invoke-virtual {v6, v7, v8, v14}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    if-eqz v14, :cond_35

    invoke-virtual {v6, v7, v8, v14}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->r(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_35
    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v1

    move v15, v0

    :goto_13
    if-lt v15, v1, :cond_37

    iget-boolean v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_36

    invoke-virtual {v6, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s:Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v2, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iget-boolean v2, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    iput-boolean v2, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    goto :goto_14

    :cond_36
    move-object v0, v9

    :goto_14
    return-object v0

    :cond_37
    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_13
.end method

.method public final I(Lorg/apache/xerces/impl/xs/SchemaGrammar;SLorg/apache/xerces/xni/QName;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_1

    move p0, v1

    :cond_1
    return p0

    :cond_2
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object p1

    if-eqz p1, :cond_3

    move p0, v1

    :cond_3
    return p0

    :cond_4
    invoke-virtual {p1, p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lorg/apache/xerces/xs/XSElementDeclaration;

    move-result-object p1

    if-eqz p1, :cond_5

    move p0, v1

    :cond_5
    :goto_0
    return p0
.end method

.method public final J(Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [C

    iput-object v2, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput v2, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    move v3, p2

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget p1, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v5, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    const/16 v3, 0x20

    aput-char v3, v4, v5

    move v3, p2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v6, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v4, v5, v6

    move v3, v2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final K(Lorg/apache/xerces/xni/XMLString;Z)V
    .locals 11

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v3, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    array-length v3, v3

    add-int/lit8 v5, v1, 0x1

    if-ge v3, v5, :cond_1

    :cond_0
    add-int/2addr v1, v4

    new-array v1, v1, [C

    iput-object v1, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iput v4, v2, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput v4, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    const/4 v2, 0x0

    move v3, p2

    move v5, v2

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-lt v1, v0, :cond_8

    if-eqz v3, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget p2, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-le p2, v4, :cond_2

    sub-int/2addr p2, v4

    iput p2, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->i:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_2
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget v0, p2, Lorg/apache/xerces/xni/XMLString;->length:I

    if-le v0, v4, :cond_5

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->i:Z

    if-nez v1, :cond_5

    iget-short v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->j:Z

    if-eqz v1, :cond_4

    iput v2, p2, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget-object v1, p2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aput-char v7, v1, v2

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    iput v2, p2, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget-object v1, p2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aput-char v7, v1, v2

    :cond_5
    :goto_3
    iget v1, p2, Lorg/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lorg/apache/xerces/xni/XMLString;->length:I

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->j:Z

    if-nez p1, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->i:Z

    :cond_7
    return-void

    :cond_8
    iget-object v8, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v8, v8, v1

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v8, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v9, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v7, v8, v9

    move v3, p2

    :cond_9
    if-nez v5, :cond_b

    move v6, v4

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v7, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    aput-char v8, v5, v7

    move v3, v2

    move v5, v4

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public L(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {p2 .. p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/16 v12, 0x10

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    if-ne v0, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x1

    :goto_1
    const/16 v16, 0x0

    if-nez v15, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    iget-object v2, v10, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v6, v0

    move v5, v1

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, v16

    move-object v6, v4

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, v16

    move-object v2, v0

    const/4 v3, 0x0

    :goto_3
    if-lt v3, v11, :cond_4

    if-nez v15, :cond_3

    iget-object v0, v10, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-complex-type.5.2"

    invoke-virtual {v7, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    invoke-interface {v9, v3, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-boolean v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v1, :cond_6

    iget-boolean v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move-object v13, v0

    goto :goto_7

    :cond_6
    :goto_5
    invoke-interface {v9, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/xerces/impl/xs/AttributePSVImpl;

    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    move-object/from16 v0, v17

    goto :goto_6

    :cond_7
    new-instance v13, Lorg/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v13}, Lorg/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    invoke-interface {v0, v1, v13}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v13

    :goto_6
    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    goto :goto_4

    :goto_7
    iget-object v0, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-ne v1, v12, :cond_c

    iget-object v1, v0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-ne v1, v12, :cond_8

    sget-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->V0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    :goto_8
    move-object v12, v1

    goto :goto_9

    :cond_8
    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-ne v1, v12, :cond_9

    sget-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->W0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_8

    :cond_9
    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-ne v1, v12, :cond_a

    sget-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->X0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_8

    :cond_a
    sget-object v12, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-ne v1, v12, :cond_b

    sget-object v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Y0:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_8

    :cond_b
    move-object/from16 v12, v16

    :goto_9
    if-eqz v12, :cond_c

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    move/from16 v21, v3

    move-object v14, v4

    move-object v4, v12

    move v12, v5

    move-object/from16 v5, v19

    move-object v9, v6

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;ILorg/apache/xerces/impl/xs/XSAttributeDecl;Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;Lorg/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto/16 :goto_f

    :cond_c
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object v14, v4

    move v12, v5

    move-object v9, v6

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v1, :cond_1a

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_f

    :cond_d
    if-eqz v15, :cond_e

    iget-object v0, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-type.3.1.1"

    invoke-virtual {v7, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_a
    if-lt v0, v12, :cond_f

    move-object/from16 v6, v16

    goto :goto_b

    :cond_f
    invoke-interface {v9, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v2, v1, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v5, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v5, :cond_19

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iget-object v3, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    move-object v6, v1

    :goto_b
    const-string v5, "cvc-complex-type.3.2.2"

    if-nez v6, :cond_11

    if-eqz v14, :cond_10

    iget-object v0, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v14, v0}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput v0, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    goto/16 :goto_f

    :cond_11
    if-eqz v6, :cond_12

    iget-object v0, v6, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-object v4, v0

    move-object/from16 v19, v9

    const/4 v5, 0x1

    const/16 v9, 0x10

    goto/16 :goto_e

    :cond_12
    iget-short v0, v14, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    goto/16 :goto_f

    :cond_13
    const/4 v1, 0x6

    iget-object v4, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v2, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v19, v9

    move-object v9, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_c

    :cond_14
    move-object/from16 v0, v16

    :goto_c
    if-nez v0, :cond_16

    iget-short v0, v14, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x1

    if-ne v0, v5, :cond_15

    iget-object v0, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    move/from16 v18, v5

    move-object/from16 v1, v20

    const/16 v9, 0x10

    goto :goto_10

    :cond_16
    const/4 v5, 0x1

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v9, 0x10

    if-ne v1, v9, :cond_18

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v1, v20

    if-eqz v1, :cond_17

    iget-object v2, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cvc-complex-type.5.1"

    invoke-virtual {v7, v3, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_17
    iget-object v1, v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    goto :goto_d

    :cond_18
    move-object/from16 v1, v20

    :goto_d
    move-object v4, v0

    move-object/from16 v20, v1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v18, v5

    move-object v5, v6

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;ILorg/apache/xerces/impl/xs/XSAttributeDecl;Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;Lorg/apache/xerces/impl/xs/AttributePSVImpl;)V

    move-object/from16 v2, v20

    goto :goto_11

    :cond_19
    move-object/from16 v19, v9

    move-object/from16 v1, v20

    const/16 v9, 0x10

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v20, v1

    move-object/from16 v9, v19

    goto/16 :goto_a

    :cond_1a
    :goto_f
    move-object/from16 v19, v9

    move-object/from16 v1, v20

    const/16 v9, 0x10

    const/16 v18, 0x1

    :goto_10
    move-object v2, v1

    :goto_11
    add-int/lit8 v3, v21, 0x1

    move v5, v12

    move-object v0, v13

    move-object v4, v14

    move-object/from16 v6, v19

    move v12, v9

    move-object/from16 v9, p2

    goto/16 :goto_3
.end method

.method public M(Lorg/apache/xerces/xni/QName;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v4, :cond_0

    array-length v4, v4

    if-ge v4, v2, :cond_1

    :cond_0
    new-array v4, v2, [C

    iput-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iput v1, v0, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput v2, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-elt.3.2.1"

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v3, Lorg/apache/xerces/impl/xs/XSElementDecl;->fType:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eq v0, v4, :cond_5

    iget-object v3, v3, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-static {v0, v3, v4, v2}, Lorg/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lorg/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-elt.5.1.1"

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u(Lorg/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u(Lorg/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-eqz v4, :cond_7

    iget-object v4, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "cvc-elt.5.2.2.1"

    invoke-virtual {p0, v5, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    const-string v6, "cvc-elt.5.2.2.2.2"

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v4, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v4, v4, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cvc-elt.5.2.2.2.1"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v4, v5}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v4, v5}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p1, p1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v4, :cond_e

    array-length v4, v4

    if-ge v4, v0, :cond_f

    :cond_e
    new-array v4, v0, [C

    iput-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_f
    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {p1, v1, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iput v1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput v0, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_10
    return-void
.end method

.method public N(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;ILorg/apache/xerces/impl/xs/XSAttributeDecl;Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;Lorg/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 7

    invoke-interface {p2, p3}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    iget-object v1, p4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v1, v0, v5, v6}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p2, p3, v5}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-interface {v1}, Lorg/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_2

    move-object p2, v4

    check-cast p2, Lorg/apache/xerces/xni/QName;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v5, p2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p3, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p2, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object v5, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, p2, p3

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, p2, v2

    aput-object v0, p2, v3

    instance-of p3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p3, :cond_1

    move-object p3, v1

    check-cast p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const/4 v5, 0x3

    aput-object p3, p2, v5

    const-string p3, "cvc-attribute.3"

    invoke-virtual {p0, p3, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {p4}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result p2

    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p3, p4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {p2, p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p2, p3, v0, v5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cvc-attribute.4"

    invoke-virtual {p0, p3, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_6

    if-eqz p5, :cond_6

    iget-short p2, p5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p3, p5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {p2, p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lorg/apache/xerces/impl/dv/ValidatedInfo;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G0:Lorg/apache/xerces/xni/QName;

    iget-object p2, p2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p5, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-complex-type.3.1"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz p1, :cond_7

    iget-object p1, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    :cond_7
    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_9

    iput-object p4, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSAttributeDeclaration;

    iput-object v1, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object p1, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    iput-short v3, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object p0

    iput-object p0, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-nez p0, :cond_8

    move v2, v3

    :cond_8
    iput-short v2, p6, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    :cond_9
    return-void
.end method

.method public O(Ljavax/xml/namespace/QName;Lorg/apache/xerces/xni/QName;)V
    .locals 8

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "cvc-elt.1.a"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/xni/QName;)V

    :goto_1
    return-void
.end method

.method public P(Ljavax/xml/namespace/QName;)V
    .locals 8

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    :goto_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v0, "cvc-type.1"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public Q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v0, "http://www.w3.org/TR/xml-schema-1"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method public final R(Lorg/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    array-length v0, p2

    if-nez p3, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p2, p0, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->S(Lorg/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lorg/apache/xerces/xs/StringList;)V

    :goto_0
    return-void
.end method

.method public final S(Lorg/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lorg/apache/xerces/xs/StringList;)V
    .locals 6

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_2

    if-lez v3, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    if-ne v3, p1, :cond_0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-array p1, v3, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    aget-object v4, p2, v2

    invoke-interface {p3, v4}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p2, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->f:Lorg/apache/xerces/xni/XMLLocator;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v2, "SchemaLocation"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v3, v2, p1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;

    invoke-direct {p1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;-><init>()V

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->f:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public activateField(Lorg/apache/xerces/impl/xs/identity/Field;I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/xs/identity/Field;->createMatcher(Lorg/apache/xerces/impl/xs/identity/ValueStore;)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lorg/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-object p1
.end method

.method public characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z
    .locals 6

    iget-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    iget-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v2, 0x2

    if-eqz p2, :cond_3

    iget-short p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k:S

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J(Ljava/lang/String;Z)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->h:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v5, v3, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v4, v5, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    iget-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->B0:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A0:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p2

    const/16 v3, 0xf

    if-ne p2, v3, :cond_7

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast p2, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short p2, p2, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    if-ne p2, v2, :cond_7

    move p2, v0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_6

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    goto :goto_6

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    move v0, v1

    :goto_6
    return v0
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C(Lorg/apache/xerces/xni/XMLString;)Lorg/apache/xerces/xni/XMLString;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->g:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {v0, p0, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D()V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->f:Lorg/apache/xerces/xni/XMLLocator;

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v1, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endValueScopeFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    return-void
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->R0:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->S0:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 6

    const/4 v1, 0x5

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->T0:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->U0:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->R0:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->T0:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F(Lorg/apache/xerces/xni/XMLString;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final q(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lorg/apache/xerces/impl/xs/identity/Selector;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lorg/apache/xerces/impl/xs/identity/FieldActivator;I)Lorg/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lorg/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-void
.end method

.method public r(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 11

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p3, v2}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v4, v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iget-short v5, v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iget-object v6, v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v5

    iget-object v6, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->l:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    :cond_1
    iget-object v7, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    iget-object v8, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    iget-short v3, v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v3, v8, :cond_3

    if-nez v7, :cond_3

    iget-object v3, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, "cvc-complex-type.4"

    invoke-virtual {p0, v9, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    new-instance v3, Lorg/apache/xerces/xni/QName;

    iget-object v5, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->e:Ljava/lang/String;

    iget-object v7, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->f:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v9, v5, v5, v7}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const-string v5, ""

    :goto_2
    instance-of v7, p2, Lorg/apache/xerces/util/XMLAttributesImpl;

    const-string v9, "CDATA"

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v10

    invoke-virtual {v7, v3, v9, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface {p2, v3, v9, v5}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    :goto_3
    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_6

    invoke-interface {p2, v10}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    new-instance v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v5}, Lorg/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string v7, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v7, v5}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSAttributeDeclaration;

    iget-object v3, v4, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->g:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v3, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v3, v6}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s:Ljava/lang/String;

    iput-object v3, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    const/4 v3, 0x2

    iput-short v3, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    iput-short v3, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-boolean v8, v5, Lorg/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->r:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lorg/apache/xerces/impl/XMLErrorReporter;)V

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lorg/apache/xerces/impl/validation/ValidationState;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->p:Lorg/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    return-void

    :cond_0
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->p:Lorg/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v4, p1}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    if-eq v4, v5, :cond_1

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :cond_1
    :try_start_1
    const-string v5, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    :goto_1
    :try_start_2
    const-string v5, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    :goto_2
    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto :goto_3

    :cond_2
    :try_start_3
    const-string v5, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    :goto_3
    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v5, :cond_3

    :try_start_4
    const-string v5, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    :try_start_5
    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    :goto_4
    :try_start_6
    const-string v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    :goto_5
    :try_start_7
    const-string v5, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    :goto_6
    :try_start_8
    const-string v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    iput-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    :goto_7
    :try_start_9
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->e:Ljava/lang/String;
    :try_end_9
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->e:Ljava/lang/String;

    :goto_8
    :try_start_a
    const-string v5, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_a
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    :goto_9
    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    const-string v5, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lorg/apache/xerces/impl/validation/ValidationState;)V

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    :try_start_b
    const-string v5, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    :goto_a
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    goto :goto_b

    :cond_4
    instance-of v6, v5, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_5

    check-cast v5, Ljavax/xml/namespace/QName;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    goto :goto_a

    :cond_5
    check-cast v5, Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;
    :try_end_b
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    :goto_b
    :try_start_c
    const-string v5, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    :goto_c
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_d

    :cond_6
    instance-of v6, v5, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_7

    check-cast v5, Ljavax/xml/namespace/QName;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    goto :goto_c

    :cond_7
    check-cast v5, Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;
    :try_end_c
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    :goto_d
    :try_start_d
    const-string v5, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-interface {p1, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5
    :try_end_d
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move v5, v0

    :goto_e
    if-eqz v5, :cond_8

    goto :goto_f

    :cond_8
    move v0, v2

    :goto_f
    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->L0:I

    :try_start_e
    const-string v0, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z
    :try_end_e
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_10

    :catch_e
    iput-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->M0:Z

    :goto_10
    :try_start_f
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v2, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_f
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_11

    :catch_f
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    :goto_11
    :try_start_10
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_10
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_12

    :catch_10
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    :goto_12
    :try_start_11
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_11
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_13

    :catch_11
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    :goto_13
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v5, v5, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v2, v3, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_12
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_12
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_14

    :catch_12
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    :goto_14
    :try_start_13
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_13
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_15

    :catch_13
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_15
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->P0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public s(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/xni/QName;)V
    .locals 2

    iget-object v0, p2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object p1, p2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.1.b"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    :goto_0
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    goto :goto_2

    :cond_0
    instance-of p1, p2, Ljavax/xml/namespace/QName;

    if-eqz p1, :cond_1

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H0:Ljavax/xml/namespace/QName;

    goto :goto_2

    :cond_2
    const-string v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_3

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    :goto_1
    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_2

    :cond_3
    instance-of p1, p2, Ljavax/xml/namespace/QName;

    if-eqz p1, :cond_4

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    goto :goto_1

    :cond_4
    check-cast p2, Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->K0:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J0:Ljavax/xml/namespace/QName;

    :cond_5
    :goto_2
    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->P0:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->f:Lorg/apache/xerces/xni/XMLLocator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->G(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->H(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startValueScopeFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    return-void
.end method

.method public t(Lorg/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-short v1, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->C0:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-object p2, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "cvc-complex-type.2.1"

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_5

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    const-string v5, "cvc-complex-type.2.2"

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v4}, Lorg/apache/xerces/impl/validation/ValidationState;->setNormalizationRequired(Z)V

    :cond_4
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v1, p2, v6, v7}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v5, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    iget-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->E0:Z

    if-eqz p2, :cond_6

    iget-object p2, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "cvc-complex-type.2.3"

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    iget-short p2, v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    const/4 v0, 0x3

    if-eq p2, v3, :cond_7

    if-ne p2, v0, :cond_b

    :cond_7
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    const/4 v1, 0x0

    aget v5, p2, v1

    if-ltz v5, :cond_b

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v5, p2}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    invoke-interface {p2, v5}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w0:[I

    invoke-interface {v5, v6}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v5

    const-string v6, "cvc-complex-type.2.4.b"

    if-eqz v5, :cond_a

    aget v1, v5, v1

    aget v3, v5, v3

    if-ge v3, v1, :cond_9

    sub-int p2, v1, v3

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-le p2, v4, :cond_8

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget v0, v5, v0

    invoke-interface {v3, v0}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-complex-type.2.4.j"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u0:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    aget v0, v5, v0

    invoke-interface {p2, v0}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-complex-type.2.4.i"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-object v2
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public u(Lorg/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-type.3.1.2"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->l:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/validation/ValidationState;->setNormalizationRequired(Z)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v2, v3}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-type.3.1.3"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t(Lorg/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final v(Z[Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 7

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->A(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z:Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->s:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->O:Z

    iput-boolean v1, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v1, v2, :cond_0

    iput-short v4, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_0
    iget v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    if-le v1, v6, :cond_1

    iput-short v3, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_1
    iput-short v5, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    :goto_0
    if-ne v2, v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->u:I

    :cond_2
    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    if-ne v2, v1, :cond_3

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v:I

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lorg/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_4

    iput-boolean v5, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    :cond_4
    iget-object v0, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->N0:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v0, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    iput-short v4, v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v3, v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    :goto_2
    if-eqz p1, :cond_7

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    :cond_7
    return-object p3
.end method

.method public w()V
    .locals 5

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x8

    new-array v2, v1, [Z

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y:[Z

    new-array v0, v1, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->J:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v1, [Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q:[Z

    new-array v0, v1, [Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->k0:[Lorg/apache/xerces/impl/xs/XSNotationDecl;

    new-array v0, v1, [Lorg/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->t0:[Lorg/apache/xerces/xs/XSTypeDefinition;

    new-array v0, v1, [Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->v0:[Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v0, v1, [Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->D0:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->F0:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z0:[Z

    new-array v0, v1, [[I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->w:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->x0:[[I

    :cond_0
    return-void
.end method

.method public final x(Ljava/util/Vector;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "{"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 9

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3, p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v3, v0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->m:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    iget-boolean v4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v3, v0, v1, v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "GrammarConflict"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v0, v5

    :cond_0
    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0, v0, p1, p4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->I(Lorg/apache/xerces/impl/xs/SchemaGrammar;SLorg/apache/xerces/xni/QName;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    iput-short p1, v3, Lorg/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v3, p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, p1, Lorg/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lorg/apache/xerces/xni/QName;

    iput-object p4, p1, Lorg/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lorg/apache/xerces/xni/QName;

    iput-object p5, p1, Lorg/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->f:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    if-nez p2, :cond_3

    sget-object p2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader$a;->d()[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p0, p3, p2, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->R(Lorg/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    iget-object p2, p2, Lorg/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-eqz p2, :cond_9

    :cond_5
    if-eqz v0, :cond_6

    sget-object p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Z0:Ljava/util/Hashtable;

    :cond_6
    :try_start_0
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p2, p1, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lorg/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lorg/apache/xerces/xni/parser/XMLEntityResolver;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    if-eqz v0, :cond_7

    iget-boolean p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lorg/apache/xerces/xs/StringList;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr p2, v1

    goto :goto_0

    :catch_0
    :cond_7
    move p2, v1

    :goto_0
    if-eqz p2, :cond_9

    :try_start_2
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->r:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    iget-object p4, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->c(Lorg/apache/xerces/impl/xs/XSDDescription;Lorg/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v8, p1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lorg/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->a:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v5, "schema_reference.4"

    new-array v6, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_8

    aget-object p0, p1, v2

    goto :goto_1

    :cond_8
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    aput-object p0, v6, v2

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :cond_9
    :goto_2
    return-object v0
.end method

.method public z(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->o:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-interface {v1, p2, v2, v0}, Lorg/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/QName;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-nez v8, :cond_1

    const/4 v3, 0x7

    iget-object v4, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v2, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->y(SLjava/lang/String;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.2"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz p3, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->z:Lorg/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p3

    const/16 v1, 0xf

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast p3, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short p3, p3, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    or-int/2addr p3, v0

    int-to-short v0, p3

    :cond_4
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v8, p3, v0}, Lorg/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lorg/apache/xerces/xs/XSTypeDefinition;Lorg/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->q0:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-static {p3}, Lorg/apache/xerces/impl/xs/util/XS10TypeHelper;->getSchemaTypeName(Lorg/apache/xerces/xs/XSTypeDefinition;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.3"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v8

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.1"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
