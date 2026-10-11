.class public Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;,
        Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field static final ATTRIBUTEGROUP_TYPE:I = 0x2

.field static final ATTRIBUTE_TYPE:I = 0x1

.field private static final CIRCULAR_CODES:[Ljava/lang/String;

.field private static final COMP_TYPE:[Ljava/lang/String;

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DEBUG_NODE_POOL:Z = false

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field static final ELEMENT_TYPE:I = 0x3

.field private static final ELE_ERROR_CODES:[Ljava/lang/String;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field static final GROUP_TYPE:I = 0x4

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field static final IDENTITYCONSTRAINT_TYPE:I = 0x5

.field private static final INC_KEYREF_STACK_AMOUNT:I = 0x2

.field private static final INC_STACK_SIZE:I = 0xa

.field private static final INIT_KEYREF_STACK:I = 0x2

.field private static final INIT_STACK_SIZE:I = 0x1e

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field static final NOTATION_TYPE:I = 0x6

.field private static final NS_ERROR_CODES:[[Ljava/lang/String;

.field public static final REDEF_IDENTIFIER:Ljava/lang/String; = "_fn3dktizrknc9pi"

.field private static final SECURE_PROCESSING:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field static final TYPEDECL_TYPE:I = 0x7

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private fAllContext:[I

.field private fAllTNSs:Ljava/util/Vector;

.field fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

.field private fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

.field fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

.field fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

.field fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

.field protected fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

.field private fDependencyMap:Ljava/util/Hashtable;

.field private fDoc2SystemId:Ljava/util/Hashtable;

.field private fDoc2XSDocumentMap:Ljava/util/Hashtable;

.field fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

.field private fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

.field fGrammarBucketAdapter:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

.field private fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

.field private fHiddenNodes:Ljava/util/Hashtable;

.field private fHonourAllSchemaLocations:Z

.field private fImportMap:Ljava/util/Hashtable;

.field private fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private fKeyrefNamespaceContext:[[Ljava/lang/String;

.field private fKeyrefStackPos:I

.field fKeyrefTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;

.field private fKeyrefs:[Lorg/w3c/dom/Element;

.field private fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

.field private fLastSchemaWasDuplicate:Z

.field private fLocalElemNamespaceContext:[[Ljava/lang/String;

.field private fLocalElemStackPos:I

.field private fLocalElementDecl:[Lorg/w3c/dom/Element;

.field private fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

.field private fLocationPairs:Ljava/util/Hashtable;

.field protected fNotationRegistry:Ljava/util/Hashtable;

.field fNotationTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

.field private fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

.field private fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field private fRedefine2NSSupport:Ljava/util/Hashtable;

.field private fRedefine2XSDMap:Ljava/util/Hashtable;

.field private fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

.field private fReportedTNS:Ljava/util/Vector;

.field private fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

.field private fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

.field fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

.field protected fSecureProcessing:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTraversed:Ljava/util/Hashtable;

.field fUniqueOrKeyTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;

.field private fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedElementRegistry:Ljava/util/Hashtable;

.field private fUnparsedElementRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistry:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedTypeRegistry:Ljava/util/Hashtable;

.field private fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

.field private fValidateAnnotations:Z

.field fWildCardTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

.field fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

.field private fXSDocumentInfoRegistry:Ljava/util/Hashtable;

.field private xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

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

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

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

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

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

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

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

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fNotationRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSecureProcessing:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    .line 5
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    .line 6
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    .line 7
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    .line 8
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    .line 9
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    .line 10
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    .line 11
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    .line 12
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    .line 13
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    .line 14
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    .line 15
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    .line 16
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    .line 17
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    .line 18
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    .line 19
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    .line 20
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    .line 21
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    .line 22
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    .line 24
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    .line 25
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    .line 26
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    .line 27
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    .line 28
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    .line 29
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    .line 30
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    .line 31
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    .line 32
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    .line 34
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    .line 35
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    const/16 v2, 0x1e

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    .line 36
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    new-array v3, v2, [Lorg/w3c/dom/Element;

    .line 37
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    .line 38
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    new-array v3, v2, [I

    .line 39
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllContext:[I

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    .line 40
    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    const/4 v3, 0x1

    .line 41
    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/w3c/dom/Element;

    .line 43
    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    .line 44
    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 45
    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 46
    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    .line 48
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    .line 53
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    return-void
.end method

.method private changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)I
    .locals 8

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p4

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-eqz p4, :cond_5

    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)I

    move-result v1

    add-int/2addr v7, v1

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findQName(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p4, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    invoke-interface {p4, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "src-redefine.6.1.2"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    :goto_2
    invoke-static {p4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p4

    goto/16 :goto_0

    :cond_5
    return v7
.end method

.method private createAnnotationValidator()V
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$1;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private createTraversers()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

    return-void
.end method

.method private doc2SystemId(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultDocument;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method private emptyString2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private findQName(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

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

    iget-boolean v0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v0, :cond_2

    iget-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_2
    const-string p2, ","

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findXSDocumentForDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;
    .locals 0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p3
.end method

.method private getSchemaDocument(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_0
    const/4 v3, 0x3

    if-eq p4, v3, :cond_1

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v4, v3, p4, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p1

    :cond_1
    move-object v3, v0

    move-object v4, v3

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->getDocument2()Lorg/w3c/dom/Document;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->getDocument2()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-eqz v4, :cond_4

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p4, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v3, :cond_5

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {p4, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move p1, v2

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    const-string p4, "schema_reference.4"

    if-eqz p3, :cond_9

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    if-nez p2, :cond_8

    const-string p2, ""

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_2
    aput-object p2, p1, v1

    invoke-virtual {p0, p4, p1, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object v0
.end method

.method private isExistingGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getDocumentLocations()Lcom/sun/org/apache/xerces/internal/xs/StringList;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private final needReportTNSError(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private nonAnnotationContent(Lorg/w3c/dom/Element;)Z
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private removeParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, p2, :cond_1

    :goto_1
    iget p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    add-int/lit8 p2, p0, -0x1

    if-ge v1, p2, :cond_0

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    add-int/lit8 p2, v1, 0x1

    aget-object v0, p0, p2

    aput-object v0, p0, v1

    move v1, p2

    goto :goto_1

    :cond_0
    sub-int/2addr p0, v3

    iput p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    return v3

    :cond_1
    iget-short v4, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {p0, v2, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->removeParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private renameRedefiningComponents(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ":"

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v13, ","

    if-eqz v1, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "src-redefine.5.a.a"

    if-nez v1, :cond_0

    invoke-virtual {v6, v2, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_0
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v6, v2, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v0, "src-redefine.5.a.b"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_3
    iget-object v12, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v12, v1, v10, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    sget v14, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v14, v12, v14

    check-cast v14, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v14, :cond_6

    iget-object v15, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v11, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v15, v11, :cond_6

    iget-object v11, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v14, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v1, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "src-redefine.5.a.c"

    invoke-virtual {v6, v0, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_2
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_7

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "src-redefine.5.b.a"

    if-nez v1, :cond_9

    invoke-virtual {v6, v2, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_9
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    invoke-virtual {v6, v2, v12, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_b
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v8, "src-redefine.5.b.b"

    if-nez v2, :cond_c

    invoke-virtual {v6, v8, v12, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_c
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    invoke-virtual {v6, v8, v12, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_e
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v0, "src-redefine.5.b.c"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_f
    iget-object v8, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v2, v10, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v8

    sget v11, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v8, v8, v11

    check-cast v8, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v8, :cond_12

    iget-object v11, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v12, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v11, v12, :cond_12

    iget-object v11, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_3

    :cond_10
    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v2, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    :goto_3
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v5, :cond_13

    goto :goto_4

    :cond_13
    move-object v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "src-redefine.5.b.d"

    invoke-virtual {v6, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_14
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-redefine.7.1"

    invoke-virtual {v6, v1, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_16
    if-ne v0, v1, :cond_17

    goto/16 :goto_7

    :cond_17
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_18
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_19
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "src-redefine.6.1.1"

    invoke-virtual {v6, v1, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_7

    :cond_1b
    if-ne v0, v1, :cond_1c

    goto :goto_7

    :cond_1c
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_1d

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1d
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1e
    const-string v0, "could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Internal-Error"

    invoke-virtual {v6, v1, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_7
    return-void
.end method

.method private resolveSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    invoke-static {p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->resolveDocument(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    goto :goto_1

    :catch_0
    const-string v2, "schema_reference.4"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_0
    move-object v6, v1

    :goto_1
    instance-of v2, v6, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    check-cast v6, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    instance-of p1, p0, Lorg/w3c/dom/Document;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    instance-of v2, v6, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;

    if-eqz v2, :cond_7

    check-cast v6, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object p2

    const-string p3, "http://xml.org/sax/features/namespace-prefixes"

    if-eqz p1, :cond_4

    :try_start_1
    invoke-interface {p1, p3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move p3, v0

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>()V

    :goto_2
    const/4 v2, 0x1

    :try_start_3
    invoke-interface {p1, p3, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1

    move p3, v2

    :goto_3
    :try_start_4
    const-string v2, "http://xml.org/sax/features/string-interning"

    invoke-interface {p1, v2}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    if-nez v2, :cond_5

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v2, v3, v4, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->reset(Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;ZZ)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-interface {p1, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :try_start_5
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :catch_4
    return-object v1

    :cond_7
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getContextType()S

    move-result v8

    move-object v4, p0

    move v7, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private setSchemasVisible(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setVisible(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateAnnotations(Ljava/util/ArrayList;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->createAnnotationValidator()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->refreshGrammars(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    :goto_1
    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;->next:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public buildGlobalNameRegistries()V
    .locals 19

    move-object/from16 v6, p0

    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object v9, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v9, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v9}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x1

    move-object v10, v0

    move v11, v1

    :goto_1
    const/4 v12, 0x0

    if-eqz v10, :cond_18

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move/from16 v18, v11

    goto/16 :goto_b

    :cond_2
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "s4s-elt-invalid-content.3"

    if-nez v0, :cond_16

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, ","

    if-eqz v0, :cond_c

    if-nez v11, :cond_4

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v12, v0

    :goto_2
    if-eqz v12, :cond_1

    sget-object v14, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v16, v7

    :cond_5
    :goto_3
    move-object/from16 v17, v9

    move/from16 v18, v11

    goto/16 :goto_6

    :cond_6
    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "_fn3dktizrknc9pi"

    if-eqz v0, :cond_8

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    iget-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v16, v7

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v17, v4

    move-object v4, v12

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object/from16 v3, v17

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object/from16 v16, v7

    move-object v7, v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v17, v4

    move-object v4, v12

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object/from16 v3, v17

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    :goto_5
    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v17, v9

    move-object v9, v4

    move-object v4, v12

    move/from16 v18, v11

    move-object v11, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v14}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object v3, v9

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move/from16 v11, v18

    goto/16 :goto_2

    :cond_c
    move-object/from16 v16, v7

    move-object/from16 v17, v9

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-object v1, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_9

    :cond_f
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_10
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_8

    :cond_11
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_12
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_13
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_14
    :goto_8
    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    iget-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v4, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    :cond_15
    :goto_9
    move v11, v12

    goto :goto_c

    :cond_16
    :goto_a
    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move/from16 v18, v11

    if-nez v18, :cond_17

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_17
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v10, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :goto_b
    move/from16 v11, v18

    :goto_c
    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v10

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    goto/16 :goto_1

    :cond_18
    move-object/from16 v16, v7

    move-object/from16 v17, v9

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    :goto_d
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v12, v1, :cond_19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_19
    move-object/from16 v7, v16

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    check-cast v6, Lorg/w3c/dom/Element;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    if-ne v6, v4, :cond_1

    return-void

    :cond_1
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_0

    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move v8, v6

    move-object v6, v7

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_0
    move v8, v10

    :goto_1
    const-string v9, "sch-props-correct.2"

    if-eqz v6, :cond_a

    if-ne v7, v5, :cond_4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-void

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2c

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_fn3dktizrknc9pi"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, ","

    if-ne v6, v5, :cond_7

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v4, v1, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_9

    iget-object v1, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_3

    :cond_9
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    return-void
.end method

.method public constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    :try_start_0
    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v12, v1, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "EmptyTargetNamespace"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    iput-object v3, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

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

    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eq v4, v6, :cond_7

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v13

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_3
    :goto_0
    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v6, :cond_4

    iput-object v4, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-boolean v14, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    goto :goto_1

    :cond_4
    if-eq v4, v6, :cond_7

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v13

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_5
    iget-object v7, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v7, :cond_7

    if-ne v5, v6, :cond_6

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v14

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v3

    :cond_7
    :goto_1
    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    const/4 v15, 0x2

    if-eqz v5, :cond_a

    if-ne v5, v14, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v6, :cond_9

    if-ne v5, v15, :cond_9

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->makeClone()Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v5, v6, v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto :goto_3

    :cond_9
    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->makeClone()Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v5, v6, v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v5, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v5

    :cond_b
    :goto_3
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v11, v6

    :goto_4
    if-eqz v11, :cond_29

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v15, v13

    move/from16 v19, v14

    move-object v13, v11

    goto/16 :goto_13

    :cond_c
    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "annotation?"

    const-string v9, "s4s-elt-must-match.1"

    if-eqz v7, :cond_19

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v7, v11, v14, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    sget v16, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v16, v7, v16

    check-cast v16, Ljava/lang/String;

    sget v17, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v17, v7, v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v13, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_d
    iget-object v13, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, v13, :cond_e

    const-string v13, "src-import.1.1"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0, v13, v15, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_e
    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6, v13, v7, v14, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_5

    :cond_f
    filled-new-array {v10, v8, v15}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_5
    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v10, v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_10
    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v13, 0x1

    move-object v15, v7

    move-object v7, v11

    move-object v9, v15

    move-object v14, v10

    move v10, v13

    move-object v13, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_7

    :cond_11
    :goto_6
    move-object v15, v7

    move-object v14, v10

    move-object v13, v11

    :goto_7
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v6, v15, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-boolean v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-nez v6, :cond_14

    :cond_12
    :goto_8
    const/4 v15, 0x0

    const/16 v19, 0x1

    goto/16 :goto_13

    :cond_13
    invoke-virtual {v12, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    :cond_14
    iget-object v6, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    invoke-virtual {v7, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_16
    :goto_9
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->doc2SystemId(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v3

    if-nez v3, :cond_12

    :cond_17
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_8

    :cond_18
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v11, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->resolveSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v3

    move v15, v11

    move-object/from16 v6, v16

    const/16 v19, 0x1

    goto/16 :goto_11

    :cond_19
    move-object v14, v10

    move/from16 v20, v13

    move-object v13, v11

    move/from16 v11, v20

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_1a
    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x1

    invoke-virtual {v7, v13, v10, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    sget v10, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v10, v7, v10

    move-object/from16 v16, v10

    check-cast v16, Ljava/lang/String;

    sget-object v10, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    iget-object v15, v12, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v11, v15}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;)V

    invoke-virtual {v10, v13, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v10, 0x1

    invoke-virtual {v6, v3, v7, v10, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_a

    :cond_1c
    filled-new-array {v14, v8, v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9, v6, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_a
    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v14, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v9, v3, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_b

    :cond_1d
    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v10, 0x1

    move-object v3, v7

    move-object v7, v13

    move-object v9, v3

    const/4 v15, 0x0

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_f

    :cond_1e
    :goto_b
    move-object v3, v7

    const/4 v15, 0x0

    goto :goto_f

    :cond_1f
    move-object v3, v7

    const/4 v15, 0x0

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v11, v6

    :goto_c
    if-eqz v11, :cond_22

    invoke-static {v11}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v10, 0x1

    invoke-virtual {v6, v11, v3, v10, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_d

    :cond_20
    const/4 v10, 0x1

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/16 v18, 0x1

    move-object v7, v13

    move-object v9, v3

    move/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_e

    :cond_21
    :goto_d
    move/from16 v19, v10

    move-object/from16 v18, v11

    :goto_e
    invoke-static/range {v18 .. v18}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    goto :goto_c

    :cond_22
    :goto_f
    const/16 v19, 0x1

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v6, v3, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v16, :cond_23

    const-string v3, "<include> or <redefine>"

    const-string v6, "schemaLocation"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "s4s-att-must-appear"

    invoke-virtual {v0, v6, v3, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_23
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-direct {v0, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->nonAnnotationContent(Lorg/w3c/dom/Element;)Z

    move-result v11

    move v3, v11

    move/from16 v11, v19

    goto :goto_10

    :cond_24
    move v3, v15

    move v11, v3

    :goto_10
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->reset()V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->doc2SystemId(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-direct {v0, v6, v3, v13}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->resolveSchema(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;ZLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object/from16 v6, v16

    :goto_11
    iget-boolean v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    if-eqz v7, :cond_26

    if-nez v3, :cond_25

    const/4 v6, 0x0

    goto :goto_12

    :cond_25
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_12

    :cond_26
    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;

    invoke-virtual {v0, v3, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    move-result-object v6

    :goto_12
    sget-object v7, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    if-eqz v6, :cond_27

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v7, v13, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz v3, :cond_28

    if-eqz v6, :cond_28

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_28
    :goto_13
    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v11

    move v13, v15

    move/from16 v14, v19

    const/4 v3, 0x0

    const/4 v15, 0x2

    goto/16 :goto_4

    :cond_29
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :catch_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    aget-object v2, v2, v5

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public element2Locator(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public element2Locator(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 4
    :cond_0
    instance-of v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;

    .line 6
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v4

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v5

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public fillInLocalElemInfo(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xs/XSObject;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    array-length v1, v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v2, 0xa

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllContext:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p5, v0, v1

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    aput-object p1, p5, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    aput-object p2, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aput p3, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aput-object p4, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    add-int/lit8 p3, v1, 0x1

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    iget-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-void
.end method

.method public findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GrammarConflict"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-object v0
.end method

.method public getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    if-ne p2, v1, :cond_0

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->SG_SchemaNS:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "src-resolve.4.1"

    const-string v3, "src-resolve.4.2"

    const/4 v4, 0x0

    if-nez v0, :cond_3

    iget-object p2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->needReportTNSError(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_2
    return-object v4

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v5, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    const-string v5, "src-resolve"

    if-nez v0, :cond_5

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->needReportTNSError(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object p2, p3, p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_4
    return-object v4

    :cond_5
    packed-switch p2, :pswitch_data_0

    move-object v6, v4

    goto :goto_1

    :pswitch_0
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v6

    goto :goto_1

    :pswitch_1
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/IdentityConstraint;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v6

    goto :goto_1

    :pswitch_4
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v6

    goto :goto_1

    :pswitch_5
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v6

    goto :goto_1

    :pswitch_6
    iget-object v6, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_6

    return-object v6

    :cond_6
    iget-object v7, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const-string v8, ","

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    packed-switch p2, :pswitch_data_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XSDHandler asked to locate component of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; it does not recognize this type!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Internal-Error"

    invoke-virtual {p0, v8, v7, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    move-object v7, v4

    move-object v8, v7

    goto/16 :goto_3

    :pswitch_7
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_8
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_9
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_a
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_b
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_c
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    goto :goto_3

    :pswitch_d
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    :goto_3
    if-nez v8, :cond_8

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object p2, p3, p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v4

    :cond_8
    invoke-direct {p0, p1, v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findXSDocumentForDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object p2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    move-object v2, v3

    :goto_4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v4

    :cond_a
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    aget-object p1, p1, p2

    if-ne p2, v1, :cond_b

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p1, "ct-props-correct.3"

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    return-object v4

    :cond_c
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    goto :goto_5

    :cond_d
    move-object p1, v4

    :goto_5
    invoke-virtual {v5, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;)V

    packed-switch p2, :pswitch_data_2

    move-object v4, v6

    goto :goto_6

    :pswitch_e
    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v4

    goto :goto_6

    :cond_e
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v4

    goto :goto_6

    :pswitch_f
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;->traverse(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    move-result-object v4

    goto :goto_6

    :pswitch_10
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v4

    goto :goto_6

    :pswitch_11
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v4

    goto :goto_6

    :pswitch_12
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v4

    goto :goto_6

    :pswitch_13
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {p0, v8, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v4

    :goto_6
    :pswitch_14
    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    return-object v4

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_14
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0
.end method

.method public getGrpOrAttrGrpRedefinedByRestriction(ILcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const-string v1, ","

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    if-nez v0, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

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
    invoke-direct {v5, v6, v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, v5, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "src-redefine.6.2.1"

    invoke-virtual {p0, p2, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_3

    :cond_6
    iget-object p1, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "src-redefine.7.2.1"

    invoke-virtual {p0, p2, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    return-object v4

    :cond_7
    return-object p3
.end method

.method public getIDRegistry()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    return-object p0
.end method

.method public getIDRegistry_sub()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    return-object p0
.end method

.method public parseSchema(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->resetNodePool()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getContextType()S

    move-result p3

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eq p3, v7, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v6

    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->prepareForParse()V

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto/16 :goto_6

    :cond_4
    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/w3c/dom/Element;

    goto/16 :goto_6

    :cond_5
    return-object v6

    :cond_6
    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    if-eqz v1, :cond_7

    :try_start_0
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move v2, v9

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>()V

    :goto_2
    :try_start_2
    invoke-interface {v1, v2, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v8

    :goto_3
    :try_start_3
    const-string v3, "http://xml.org/sax/features/string-interning"

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move v3, v9

    :goto_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    if-nez v4, :cond_8

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    :cond_8
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v4, v5, v10, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->reset(Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;ZZ)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :try_start_4
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v6

    :cond_9
    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :catch_3
    return-object v6

    :cond_a
    if-ne p3, v7, :cond_b

    move v3, v8

    goto :goto_5

    :cond_b
    move v3, v9

    :goto_5
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZSLorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_c

    return-object v6

    :cond_c
    if-ne p3, v7, :cond_f

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    move-object v1, v6

    :goto_7
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->findGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v3, v2, p3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p3, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_f

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->prepareForTraverse()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->constructTrees(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSDDescription;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    if-nez p1, :cond_10

    return-object v6

    :cond_10
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->buildGlobalNameRegistries()V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz p1, :cond_11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->traverseSchemas(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->traverseLocalElements()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->resolveKeyRefs()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v8

    :goto_8
    if-ltz p1, :cond_15

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_a

    :cond_12
    move v0, v9

    move v1, v0

    :goto_9
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_13

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v1, v3

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {p3, v1}, Ljava/util/Vector;->setSize(I)V

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz p1, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_16

    invoke-direct {p0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->validateAnnotations(Ljava/util/ArrayList;)V

    :cond_16
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0
.end method

.method public prepareForParse()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-void
.end method

.method public prepareForTraverse()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->createTraversers()V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/xml-schema-1"

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :goto_0
    return-void
.end method

.method public reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->xl:Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/xml-schema-1"

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :goto_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 10

    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v4, "http://apache.org/xml/properties/internal/error-handler"

    const-string v5, "http://apache.org/xml/properties/security-manager"

    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSecureProcessing:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    :try_start_0
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSecureProcessing:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v7, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    :cond_0
    const-string v7, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :try_start_1
    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v8, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_3

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    if-eqz v7, :cond_1

    move-object v9, v7

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {v9}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    :goto_0
    invoke-virtual {v8, v4, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {v7}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    :goto_1
    invoke-virtual {v8, v4, v7}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    const-string v7, "http://apache.org/xml/features/validate-annotations"

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    :goto_2
    :try_start_3
    const-string v7, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v3, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    iput-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_4
    :try_start_8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    invoke-interface {p1, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0, v5, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_4
    return-void
.end method

.method public resolveKeyRefs()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;->makeGlobal()V

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDKeyrefTraverser;->traverse(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    return-void
.end method

.method public setGenerateSyntheticAnnotations(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSchemaParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    const-string v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public storeKeyRef(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V
    .locals 7

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const-string v2, ","

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lorg/w3c/dom/Element;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aput-object p3, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget-object p3, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p2, p1, p3

    return-void
.end method

.method public traverseLocalElements()V
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lorg/w3c/dom/Element;

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    aget-object v5, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v2, v5, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v6

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aget v7, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aget-object v8, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aget-object v9, v0, v1

    invoke-virtual/range {v2 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParent:[Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    aget-object v0, v0, v1

    instance-of v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSParticle;->getTerm()Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->fModelGroup:Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fParticle:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->removeParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public traverseSchemas(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRoot:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;

    iget-object v8, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v9

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v10, 0x0

    move v3, v10

    :goto_1
    if-eqz v2, :cond_10

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v4, v6}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    goto :goto_3

    :cond_2
    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(annotation | (simpleType | complexType | group | attributeGroup))*"

    filled-new-array {v6, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "s4s-elt-must-match.1"

    invoke-virtual {p0, v6, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_3
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextVisibleSiblingElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    goto/16 :goto_4

    :cond_7
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    goto/16 :goto_4

    :cond_8
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    goto/16 :goto_4

    :cond_9
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    goto :goto_4

    :cond_a
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    goto :goto_4

    :cond_b
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    goto :goto_4

    :cond_c
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDNotationTraverser;->traverse(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    goto :goto_4

    :cond_d
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    goto :goto_4

    :cond_e
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    move v3, v5

    goto :goto_4

    :cond_f
    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "s4s-elt-invalid-content.1"

    invoke-virtual {p0, v5, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextVisibleSiblingElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto/16 :goto_1

    :cond_10
    if-nez v3, :cond_11

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fElementTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->getAnnotations()Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAnnotationInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-direct {p0, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->doc2SystemId(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->returnSchemaAttrs()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    :goto_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method
