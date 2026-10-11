.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentFilter;
.implements Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;
.implements Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ShortVector;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

.field private fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field protected fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fIdConstraint:Z

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field protected final fMayMatchFieldMap:Ljava/util/HashMap;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field private fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

.field private fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private final fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

.field protected fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

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

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0xb

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

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v6, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v7, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v8, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugmentations:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMayMatchFieldMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v0, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-short v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v6, "QName"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-direct {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->nodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    invoke-direct {v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;)V

    iput-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v5, v3, v2, v4, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)V

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const/16 v2, 0x8

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setFacetChecking(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getSelector()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {p1, p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector;->createMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-void
.end method

.method private convertToPrimitiveKind(S)S
    .locals 0

    const/16 p0, 0x14

    if-gt p1, p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x1d

    if-gt p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x2a

    if-gt p1, p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return p1
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "{"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isComparable(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Z
    .locals 7

    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->convertToPrimitiveKind(S)S

    move-result v0

    iget-short v1, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->convertToPrimitiveKind(S)S

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    if-ne v0, v2, :cond_2

    if-ne v1, v4, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_b

    :cond_4
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_0
    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    if-eq v0, v1, :cond_7

    return v3

    :cond_7
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_b

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v5

    invoke-direct {p0, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->convertToPrimitiveKind(S)S

    move-result v5

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v6

    invoke-direct {p0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->convertToPrimitiveKind(S)S

    move-result v6

    if-eq v5, v6, :cond_a

    if-ne v5, v4, :cond_8

    if-eq v6, v2, :cond_a

    :cond_8
    if-ne v5, v2, :cond_9

    if-ne v6, v4, :cond_9

    goto :goto_3

    :cond_9
    return v3

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return v4
.end method

.method private normalizeWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Z)V
    .locals 11

    .line 1
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    array-length v3, v3

    add-int/lit8 v5, v1, 0x1

    if-ge v3, v5, :cond_1

    :cond_0
    add-int/2addr v1, v4

    .line 3
    new-array v1, v1, [C

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    .line 4
    :cond_1
    iput v4, v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    .line 5
    iput v4, v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    .line 6
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    const/4 v2, 0x0

    move v3, p2

    move v5, v2

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-ge v1, v0, :cond_5

    .line 7
    iget-object v8, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v8, v8, v1

    .line 8
    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v8, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v9, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v7, v8, v9

    move v3, p2

    :cond_2
    if-nez v6, :cond_4

    move v5, v4

    goto :goto_1

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v6, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v7, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v8, v6, v7

    move v3, v2

    move v6, v4

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    .line 11
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-le p2, v4, :cond_6

    sub-int/2addr p2, v4

    .line 12
    iput p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    :goto_2
    move p1, v4

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move p1, v2

    .line 14
    :goto_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget v0, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-le v0, v4, :cond_9

    .line 15
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v1, :cond_9

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 16
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-eqz v1, :cond_8

    .line 17
    iput v2, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    .line 18
    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aput-char v7, v1, v2

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    .line 19
    iput v2, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    .line 20
    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aput-char v7, v1, v2

    .line 21
    :cond_9
    :goto_4
    iget v1, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    .line 22
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-nez p1, :cond_a

    if-eqz v6, :cond_b

    .line 23
    :cond_a
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    :cond_b
    return-void
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v0, :cond_1

    .line 26
    :cond_0
    new-array v2, v0, [C

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    :cond_1
    const/4 v2, 0x0

    .line 27
    iput v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    .line 28
    iput v2, v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    move v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 30
    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_3

    .line 31
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v5, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    const/16 v3, 0x20

    aput-char v3, v4, v5

    move v3, p2

    goto :goto_1

    .line 32
    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v6, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    aput-char v4, v5, v6

    move v3, v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 33
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-eqz p1, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 34
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    :cond_5
    return-void
.end method


# virtual methods
.method public activateField(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->getIdentityConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setMayMatch(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Ljava/lang/Boolean;)V

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;->createMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/ValueStore;)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-object p1
.end method

.method public addDefaultAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V
    .locals 10

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-interface {p3, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-short v5, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iget-object v6, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v5

    iget-object v6, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :cond_0
    iget-object v7, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v8, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    iget-short v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fUse:S

    if-ne v3, v8, :cond_2

    if-nez v7, :cond_2

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, "cvc-complex-type.4"

    invoke-virtual {p0, v9, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v7, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v9, v5, v5, v7}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-string v5, ""

    :goto_2
    const-string v7, "CDATA"

    invoke-interface {p2, v3, v7, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    instance-of v7, p2, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    if-eqz v6, :cond_4

    iget-object v9, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    iget-object v9, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :goto_3
    invoke-interface {v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v9

    invoke-virtual {v7, v3, v9}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSchemaId(IZ)V

    :cond_5
    iget-boolean v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v7, :cond_6

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v3

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;

    invoke-direct {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;-><init>()V

    const-string v9, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v9, v7}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    iget-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iput-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fNormalizedValue:Ljava/lang/String;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    iget-short v3, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    iput-short v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValueType:S

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    const/4 v3, 0x2

    iput-short v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidity:S

    iput-short v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-boolean v8, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fSpecified:Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z
    .locals 6

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

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
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v2, 0x2

    if-eqz p2, :cond_3

    iget-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v5, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v3, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-virtual {p2, v4, v5, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p2

    const/16 v3, 0xf

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short p2, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne p2, v2, :cond_6

    move p2, v0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_5
    return v0
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-interface {v0, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public elementLocallyValidComplexType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v3, 0x2

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "cvc-complex-type.2.1"

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    const-string v5, "cvc-complex-type.2.2"

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNormalizationRequired(Z)V

    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-interface {v1, p2, v4, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v5, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "cvc-complex-type.2.3"

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    iget-short p2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq p2, v3, :cond_7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v0, 0x0

    aget v0, p2, v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    invoke-interface {v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-complex-type.2.4.b"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-object v2
.end method

.method public elementLocallyValidType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-type.3.1.2"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNormalizationRequired(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-type.3.1.3"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final endElementPSVI(Z[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v1, v2, :cond_0

    iput-short v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-le v1, v2, :cond_1

    iput-short v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_1
    iput-short v5, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-eqz v1, :cond_2

    iput-boolean v5, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSpecified:Z

    :cond_2
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNil:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNormalizedValue:Ljava/lang/String;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValue:Ljava/lang/Object;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    iput-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValueType:S

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fErrorCodes:[Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    iput-short v4, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidity:S

    goto :goto_2

    :cond_4
    iput-short v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidity:S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    :goto_2
    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    :cond_5
    return-object p3
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endValueScopeFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    return-void
.end method

.method public ensureStackCapacity()V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x8

    new-array v2, v1, [Z

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v0, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    new-array v0, v1, [Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v0, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    new-array v0, v1, [Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    new-array v0, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    new-array v0, v1, [Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-array v0, v1, [[I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    :cond_0
    return-void
.end method

.method public findSchemaGrammar(SLjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-short p1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iput-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fEnclosedElementName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p4, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fTriggeringComponent:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p5, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    if-nez p2, :cond_1

    sget-object p2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    const/4 p3, 0x0

    if-eqz p1, :cond_3

    array-length p4, p1

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    array-length p5, p1

    new-array p5, p5, [Ljava/lang/String;

    iput-object p5, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    array-length p4, p1

    invoke-static {p1, p3, p5, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    const-string p4, "http://www.w3.org/TR/xml-schema-1"

    const/4 p5, 0x1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p1, v0, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Z)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "GrammarConflict"

    invoke-virtual {p1, p4, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    move-object v0, p2

    :cond_4
    if-nez v0, :cond_6

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez p1, :cond_6

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    invoke-static {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->resolveDocument(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {p2, v1, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSDDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-array p2, p5, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    aget-object p1, p1, p3

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    aput-object p1, p2, p3

    const-string p1, "schema_reference.4"

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public getAndCheckXsiType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fQNameDV:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {v1, p2, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/QName;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-nez v8, :cond_1

    const/4 v3, 0x7

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    move-object v2, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.2"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fBlock:S

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p3

    const/16 v1, 0xf

    if-ne p3, v1, :cond_3

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast p3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short p3, p3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr p3, v0

    int-to-short v0, p3

    :cond_3
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-static {v8, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->checkTypeDerivationOk(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.3"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v8

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.4.1"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugmentations:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    :cond_0
    const-string v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->reset()V

    return-object p1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getXsiNil(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    const-string v1, ","

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.3.1"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getConstraintType()S

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-elt.3.2.2"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public handleCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Lcom/sun/org/apache/xerces/internal/xni/XMLString;
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    :cond_4
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v4, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v5, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v3, :cond_7

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    :goto_2
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v3, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_7

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object p1
.end method

.method public handleEndDocument()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    return-void
.end method

.method public handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 12

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v0, p1, :cond_0

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->fullSchemaChecking(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_1
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->processElementContent(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    :goto_1
    if-ltz v3, :cond_8

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object v5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-nez v4, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v9, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v10, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v11, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;ZLjava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V

    goto :goto_5

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getNillable()Z

    move-result v8

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :goto_2
    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object v9, v6

    if-nez v4, :cond_6

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :goto_3
    iget-short v6, v6, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    move v10, v6

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    :goto_4
    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-object v11, v4

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;ZLjava/lang/Object;SLcom/sun/org/apache/xerces/internal/xs/ShortList;)V

    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    :cond_9
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result p1

    move v3, v0

    :goto_6
    const/4 v4, 0x2

    if-lt v3, p1, :cond_b

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object v5

    instance-of v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;

    if-eqz v6, :cond_a

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v7

    if-eq v7, v4, :cond_a

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-lt v0, p1, :cond_d

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object v3

    instance-of v5, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;

    if-eqz v5, :cond_c

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v6

    if-ne v6, v4, :cond_c

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v3

    invoke-virtual {v6, v5, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->resetIDTables()V

    if-eqz p1, :cond_e

    const-string v0, "cvc-id.1"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->fullSchemaChecking(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_f
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammars()[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_10

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_10
    invoke-virtual {p0, v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    goto :goto_8

    :cond_11
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    move-object p0, p2

    :goto_8
    return-object p0
.end method

.method public handleIgnorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V
    .locals 0

    return-void
.end method

.method public handleStartDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    :cond_0
    return-void
.end method

.method public handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 10

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v0, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v0, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v3, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    :cond_1
    return-object p3

    :cond_2
    const/4 v4, 0x5

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;

    invoke-interface {v4, p1, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;->oneTransition(Lcom/sun/org/apache/xerces/internal/xni/QName;[ILcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v8, v7, v6

    if-ne v8, v2, :cond_5

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    invoke-interface {v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "cvc-complex-type.2.4.a"

    invoke-virtual {p0, v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v7, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "cvc-complex-type.2.4.d"

    invoke-virtual {p0, v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v4, v5

    :cond_5
    :goto_0
    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v7, v2, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aput-boolean v1, v7, v8

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget-boolean v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotationStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTypeStack:[Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget-boolean v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStack:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget-boolean v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v9, v7, v8

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget-boolean v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v9, v7, v8

    :cond_6
    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz v4, :cond_8

    instance-of v7, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v7, :cond_7

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    goto :goto_1

    :cond_7
    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    goto :goto_2

    :cond_8
    :goto_1
    move-object v4, v5

    :goto_2
    const/4 v7, 0x2

    if-eqz v4, :cond_a

    iget-short v8, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v8, v7, :cond_a

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    :cond_9
    return-object p3

    :cond_a
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-nez v8, :cond_b

    if-eqz v3, :cond_b

    iget-object v8, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    :cond_b
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    :cond_c
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-interface {p2, v0, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-nez v3, :cond_14

    if-nez v0, :cond_14

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v0, :cond_12

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v7, "cvc-elt.1"

    invoke-virtual {v0, v4, v7, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_4

    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_f
    const/4 p1, -0x2

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return-object p3

    :cond_10
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    :cond_11
    return-object p3

    :cond_12
    if-eqz v4, :cond_13

    iget-short v0, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v1, :cond_13

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-complex-type.2.4.c"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_4
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    goto :goto_7

    :cond_14
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    if-eqz v0, :cond_16

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-nez v0, :cond_16

    if-nez v3, :cond_15

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    goto :goto_5

    :cond_15
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    :cond_16
    :goto_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v7, :cond_17

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_18

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto :goto_7

    :cond_18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v1, :cond_19

    move v0, v1

    goto :goto_6

    :cond_19
    move v0, v6

    :goto_6
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    :goto_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-elt.2"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    :cond_1b
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-boolean v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    iput-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    :cond_1c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/4 v2, 0x3

    const/16 v3, 0xf

    if-ne v0, v3, :cond_1f

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "cvc-type.2"

    invoke-virtual {p0, v7, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_21

    iget-short v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v4, v1, :cond_21

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v4

    if-ne v4, v2, :cond_1e

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto :goto_8

    :cond_1e
    :try_start_0
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_1f
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v4

    if-ne v4, v2, :cond_20

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto :goto_8

    :cond_20
    :try_start_1
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_21
    :goto_8
    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    if-ne v0, v3, :cond_22

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCMBuilder:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentModel(Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    :cond_22
    iput-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    :cond_23
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v2, :cond_24

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getXsiNil(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    :cond_24
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    if-ne v0, v3, :cond_25

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v5

    :cond_25
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_26

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v2, :cond_26

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/identity/FieldActivator;)V

    :cond_26
    invoke-virtual {p0, p1, p2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->processAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V

    if-eqz v5, :cond_27

    invoke-virtual {p0, p1, p2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V

    :cond_27
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    :goto_9
    if-ge v6, v0, :cond_28

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_28
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_29

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    :cond_29
    return-object p3
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public mayMatch(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMayMatchFieldMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public processAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v11

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/16 v12, 0x10

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

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

    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v1

    iget-object v2, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

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
    if-ge v3, v11, :cond_19

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {v9, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-boolean v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v1, :cond_4

    iget-boolean v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v1, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move-object v13, v0

    goto :goto_7

    :cond_4
    :goto_5
    invoke-interface {v9, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v0

    const-string v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->reset()V

    move-object/from16 v0, v17

    goto :goto_6

    :cond_5
    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;

    invoke-direct {v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;-><init>()V

    invoke-interface {v0, v1, v13}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v13

    :goto_6
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    goto :goto_4

    :goto_7
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v12, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-ne v1, v12, :cond_a

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    :goto_8
    move-object v12, v0

    goto :goto_9

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_8

    :cond_7
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_8

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_XSI:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object/from16 v12, v16

    :goto_9
    if-eqz v12, :cond_a

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

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->processOneAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;ILcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;)V

    goto/16 :goto_f

    :cond_a
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object v14, v4

    move v12, v5

    move-object v9, v6

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v1, :cond_18

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_f

    :cond_b
    if-eqz v15, :cond_c

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-type.3.1.1"

    invoke-virtual {v7, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_c
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v12, :cond_e

    invoke-interface {v9, v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v5, :cond_d

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v3, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_d

    move-object v6, v1

    goto :goto_b

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v6, v16

    :goto_b
    const-string v5, "cvc-complex-type.3.2.2"

    if-nez v6, :cond_10

    if-eqz v14, :cond_f

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_10
    if-eqz v6, :cond_11

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-object v4, v0

    move-object/from16 v19, v9

    const/4 v5, 0x1

    const/16 v9, 0x10

    goto/16 :goto_e

    :cond_11
    iget-short v0, v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    goto/16 :goto_f

    :cond_12
    const/4 v1, 0x6

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v19, v9

    move-object v9, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_c

    :cond_13
    move-object/from16 v0, v16

    :goto_c
    if-nez v0, :cond_15

    iget-short v0, v14, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x1

    if-ne v0, v5, :cond_14

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    move/from16 v18, v5

    move-object/from16 v1, v20

    const/16 v9, 0x10

    goto :goto_10

    :cond_15
    const/4 v5, 0x1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v9, 0x10

    if-ne v1, v9, :cond_17

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v1, v20

    if-eqz v1, :cond_16

    iget-object v2, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cvc-complex-type.5.1"

    invoke-virtual {v7, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    goto :goto_d

    :cond_17
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

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->processOneAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;ILcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;)V

    move-object/from16 v2, v20

    goto :goto_11

    :cond_18
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

    :cond_19
    move-object v1, v2

    if-nez v15, :cond_1a

    iget-object v0, v10, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    iget-object v2, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-complex-type.5.2"

    invoke-virtual {v7, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public processElementContent(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    if-eqz v4, :cond_0

    array-length v4, v4

    if-ge v4, v2, :cond_1

    :cond_0
    new-array v4, v2, [C

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    :cond_1
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iput v2, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-elt.3.2.1"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eq v0, v4, :cond_5

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-static {v0, v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "cvc-elt.5.1.1"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "cvc-elt.5.2.2.1"

    invoke-virtual {p0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    const-string v6, "cvc-elt.5.2.2.2.2"

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-short v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cvc-elt.5.2.2.2.1"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p0, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->isComparable(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p0, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->isComparable(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDefaultValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    if-eqz v4, :cond_e

    array-length v4, v4

    if-ge v4, v0, :cond_f

    :cond_e
    new-array v4, v0, [C

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    :cond_f
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    invoke-virtual {p1, v1, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iput v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_10
    return-void
.end method

.method public processOneAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;ILcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;)V
    .locals 6

    invoke-interface {p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    iget-object v1, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-interface {v1, v0, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p2, p3, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_0
    instance-of v4, p2, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    if-eqz v4, :cond_2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    :goto_0
    invoke-virtual {p2, p3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSchemaId(IZ)V

    :cond_2
    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result p2

    if-ne p2, v2, :cond_3

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_3

    move-object p2, v3

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNotation:Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p2, p3, v0, v4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "cvc-attribute.3"

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    const/4 p2, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result p3

    if-ne p3, p2, :cond_5

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p0, p3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->isComparable(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p3, v4, v0, v5}, [Ljava/lang/Object;

    move-result-object p3

    const-string v4, "cvc-attribute.4"

    invoke-virtual {p0, v4, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_7

    if-eqz p5, :cond_7

    iget-short p3, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-ne p3, p2, :cond_7

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object v4, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p0, p3, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->isComparable(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    :cond_6
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p5, p5, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fDefault:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-virtual {p5}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p5

    filled-new-array {p1, p3, v0, p5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "cvc-complex-type.3.1"

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz p1, :cond_8

    iput-object v3, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    :cond_8
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_a

    iput-object p4, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    iput-object v1, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object p3, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object p3, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fNormalizedValue:Ljava/lang/String;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object p3, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    iget-short p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    iput-short p3, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValueType:S

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object p1, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-short p2, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object p0

    iput-object p0, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fErrorCodes:[Ljava/lang/String;

    if-nez p0, :cond_9

    move v2, p2

    :cond_9
    iput-short v2, p6, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidity:S

    :cond_a
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v0, "http://www.w3.org/TR/xml-schema-1"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->resetIDTables()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->nodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrentCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMatcherStack:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMayMatchFieldMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMayMatchFieldMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->addValidationState(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    return-void

    :cond_1
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eq v3, v4, :cond_2

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    :cond_2
    :try_start_1
    const-string v4, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    :goto_1
    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v4, :cond_3

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v4, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    :goto_2
    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v4, :cond_4

    :try_start_3
    const-string v4, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    :try_start_4
    const-string v4, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    :goto_3
    :try_start_5
    const-string v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    :goto_4
    :try_start_6
    const-string v4, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    :goto_5
    :try_start_7
    const-string v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    :goto_6
    :try_start_8
    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    :goto_7
    :try_start_9
    const-string v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    :goto_8
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->addValidationState(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setSymbolTable(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    :try_start_a
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_a
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    :goto_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {v0, v2, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :try_start_b
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_b
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_a

    :catch_b
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    :goto_a
    :try_start_c
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_c
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_b

    :catch_c
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_b
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setSymbolTable(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setSymbolTable(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setMayMatch(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fMayMatchFieldMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4XsiType:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleStartDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startValueScopeFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;I)Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    return-void
.end method

.method public storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "SchemaLocation"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method
