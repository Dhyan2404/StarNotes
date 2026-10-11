.class public Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$RewindableInputStream;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBuffer;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String;

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STAX_ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/stax-entity-resolver"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;

.field private static gUserDirURI:Lcom/sun/org/apache/xerces/internal/util/URI;


# instance fields
.field protected final defaultEncoding:[Ljava/lang/Object;

.field protected fAllowJavaEncodings:Z

.field private fBufferPool:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

.field protected fBufferSize:I

.field protected fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected fEntities:Ljava/util/Hashtable;

.field private final fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field protected fEntityExpansionCount:I

.field protected fEntityExpansionLimit:I

.field protected fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

.field protected fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field protected fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

.field protected fEntityStack:Ljava/util/Stack;

.field protected fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fInExternalSubset:Z

.field protected fOwnReaders:Ljava/util/Vector;

.field protected fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

.field private final fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

.field protected fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field protected fStandalone:Z

.field protected fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

.field protected fStrictURI:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fValidation:Z

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field protected fWarnDuplicateEntityDef:Z

.field protected fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

.field protected fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "http://apache.org/xml/features/allow-java-encodings"

    const-string v1, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    const-string v2, "http://xml.org/sax/features/validation"

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v0, v1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v6, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v8, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v9, "http://apache.org/xml/properties/input-buffer-size"

    const-string v10, "http://apache.org/xml/properties/security-manager"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    const/16 v0, 0x2000

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x0

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const-string v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const-string v0, "[dtd]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    new-array v1, v0, [C

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    new-array v0, v0, [C

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gHexChs:[C

    move v0, v2

    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v5, v0, 0x4

    aget-char v5, v4, v5

    aput-char v5, v1, v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v1, 0x7f

    aput-boolean v3, v0, v1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v4, 0x37

    aput-char v4, v0, v1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v4, 0x46

    aput-char v4, v0, v1

    const/16 v0, 0xf

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-char v4, v1, v2

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v3, v5, v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    const/16 v1, 0x2000

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 6
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 7
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 8
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 9
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 10
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    const-string v2, "UTF-8"

    .line 11
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 12
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    .line 13
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    .line 14
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferPool:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    .line 15
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 16
    new-instance v1, Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-direct {v1, p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    .line 17
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setScannerVersion(S)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    const/16 v0, 0x2000

    .line 20
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 23
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 24
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 25
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 26
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 27
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    const-string v1, "UTF-8"

    .line 28
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    .line 30
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    .line 31
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferPool:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 33
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    .line 34
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    .line 35
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;-><init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 36
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    const/16 v1, 0x2000

    .line 39
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/4 v2, 0x0

    .line 41
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    .line 42
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 43
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 44
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 45
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 46
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    const-string v2, "UTF-8"

    .line 47
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 48
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    .line 49
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    .line 50
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferPool:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    .line 51
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    .line 53
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setScannerVersion(S)V

    return-void
.end method

.method public static absolutizeAgainstUserDir(Lcom/sun/org/apache/xerces/internal/util/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->absolutize(Lcom/sun/org/apache/xerces/internal/util/URI;)V

    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_5

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_2
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    const/16 v1, 0x3a

    .line 7
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 8
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v4, "file"

    const-string v5, ""

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v4, "file"

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v2, "file"

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 14
    :goto_1
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    .line 16
    :try_start_0
    new-instance p2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    :try_start_1
    new-instance p2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 19
    :catch_1
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 21
    new-instance p2, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v2, "file"

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    new-instance p2, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v8, "file"

    const-string v9, ""

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p2

    invoke-direct/range {v7 .. v12}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_1
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_3
    :try_start_2
    invoke-static {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 26
    :catch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    return-object p0

    .line 27
    :cond_4
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v1, :cond_5

    goto :goto_2

    .line 29
    :cond_5
    :try_start_4
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    const/16 v1, 0x3a

    .line 30
    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 31
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v4, "file"

    const-string v5, ""

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_6
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object v2

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object v1

    .line 34
    :goto_3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, p1

    :catch_4
    if-nez v0, :cond_8

    return-object p0

    .line 35
    :cond_8
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;-><init>()V

    throw p0

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/URI;->isAbsoluteURI()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->absolutize(Lcom/sun/org/apache/xerces/internal/util/URI;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;->absolutize(Lcom/sun/org/apache/xerces/internal/util/URI;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/URI;->isAbsoluteURI()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/URI;->absolutize(Lcom/sun/org/apache/xerces/internal/util/URI;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;->absolutize(Lcom/sun/org/apache/xerces/internal/util/URI;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static declared-synchronized getUserDir()Lcom/sun/org/apache/xerces/internal/util/URI;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    const-class v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    monitor-enter v0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v4, "file"

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_3
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gUserDirURI:Lcom/sun/org/apache/xerces/internal/util/URI;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gUserDirURI:Lcom/sun/org/apache/xerces/internal/util/URI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_4
    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v1, 0x3

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v1, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    const/16 v6, 0x41

    if-lt v4, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v4, v6, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v4, v5

    :goto_0
    const/16 v6, 0x25

    if-ge v4, v1, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x80

    if-lt v8, v9, :cond_3

    goto :goto_2

    :cond_3
    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    int-to-char v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-ge v4, v1, :cond_8

    :try_start_5
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    array-length v4, v1

    :goto_3
    if-ge v5, v4, :cond_8

    aget-byte v8, v1, v5

    if-gez v8, :cond_6

    add-int/lit16 v8, v8, 0x100

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v10, v8, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v9, v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v9, v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v8, v9, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v5, "file"

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_8
    :try_start_7
    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    const-string v3, "file"

    const-string v4, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->gUserDirURI:Lcom/sun/org/apache/xerces/internal/util/URI;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setInstanceFollowRedirects(Ljava/net/HttpURLConnection;Z)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/net/HttpURLConnection;

    const-string v1, "setInstanceFollowRedirects"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v3, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object p4, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v6, p4

    new-instance p4, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLEntityDescriptionImpl;

    invoke-static {p3, v6, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {p4, p1, v0, p2, p3}, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_4
    :goto_2
    return-void
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/xml/internal/stream/Entity$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    new-instance v7, Lcom/sun/org/apache/xerces/internal/util/XMLEntityDescriptionImpl;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, v7, p5, p2}, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string p4, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeReaders()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eqz v0, :cond_1

    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {p2, p1, p3, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V

    return-object p2

    :cond_1
    const-string v0, "US-ASCII"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/io/ASCIIReader;

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {p2, p1, p3, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILcom/sun/org/apache/xerces/internal/util/MessageFormatter;Ljava/util/Locale;)V

    return-object p2

    :cond_2
    const-string v0, "ISO-10646-UCS-4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v3

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "EncodingByteOrderUnsupported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    const-string v0, "ISO-10646-UCS-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object p0

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v3

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "EncodingByteOrderUnsupported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_8
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz p3, :cond_9

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz p3, :cond_a

    if-nez v0, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v3

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "EncodingDeclInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    const-string p2, "ISO-8859-1"

    :cond_a
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_c

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz p3, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EncodingDeclInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    const-string p2, "ISO8859_1"

    goto :goto_0

    :cond_c
    move-object p2, p3

    :goto_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method public endEntity()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    const-string v2, "LAST_ENTITY"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v2, v1, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setCurrentEntity(Lcom/sun/xml/internal/stream/Entity$ScannedEntity;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-nez p0, :cond_5

    move v4, v5

    :cond_5
    xor-int/lit8 p0, v2, 0x1

    and-int/2addr p0, v4

    if-nez p0, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public endExternalSubset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method

.method public getColumnNumber()I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->columnNumber:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {v1}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->columnNumber:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    return-object p0
.end method

.method public getCurrentResourceIdentifier()Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    return-object p0
.end method

.method public getEncodingName([BI)[Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x1

    aget-byte v5, p1, v4

    and-int/2addr v5, v3

    const-string v6, "UTF-16BE"

    const/16 v7, 0xfe

    if-ne v2, v7, :cond_1

    if-ne v5, v3, :cond_1

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v8, "UTF-16LE"

    if-ne v2, v3, :cond_2

    if-ne v5, v7, :cond_2

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v8, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v7, 0x3

    if-ge p2, v7, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    return-object p0

    :cond_3
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    const/16 v9, 0xef

    if-ne v2, v9, :cond_4

    const/16 v9, 0xbb

    if-ne v5, v9, :cond_4

    const/16 v9, 0xbf

    if-ne v0, v9, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    return-object p0

    :cond_4
    const/4 v9, 0x4

    if-ge p2, v9, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    return-object p0

    :cond_5
    aget-byte p1, p1, v7

    and-int/2addr p1, v3

    const-string p2, "ISO-10646-UCS-4"

    const/16 v3, 0x3c

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    if-ne p1, v3, :cond_6

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne v2, v3, :cond_7

    if-nez v5, :cond_7

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v7, 0x0

    if-nez v2, :cond_8

    if-nez v5, :cond_8

    if-ne v0, v3, :cond_8

    if-nez p1, :cond_8

    filled-new-array {p2, v7}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    if-nez v2, :cond_9

    if-ne v5, v3, :cond_9

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    filled-new-array {p2, v7}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 p2, 0x3f

    if-nez v2, :cond_a

    if-ne v5, v3, :cond_a

    if-nez v0, :cond_a

    if-ne p1, p2, :cond_a

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    if-ne v2, v3, :cond_b

    if-nez v5, :cond_b

    if-ne v0, p2, :cond_b

    if-nez p1, :cond_b

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    filled-new-array {v8, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p2, 0x4c

    if-ne v2, p2, :cond_c

    const/16 p2, 0x6f

    if-ne v5, p2, :cond_c

    const/16 p2, 0xa7

    if-ne v0, p2, :cond_c

    const/16 p2, 0x94

    if-ne p1, p2, :cond_c

    const-string p0, "CP037"

    filled-new-array {p0, v7}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    return-object p0
.end method

.method public getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    return-object p0
.end method

.method public getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v2, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->lineNumber:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {v1}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->lineNumber:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object v2, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isEntityDeclInExternalSubset()Z

    move-result p0

    return p0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStandalone:Z

    return p0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isUnparsed()Z

    move-result p0

    return p0
.end method

.method public final print()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    .line 46
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStandalone:Z

    .line 47
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 48
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 49
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    .line 51
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-eqz v1, :cond_1

    .line 52
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-eqz v1, :cond_2

    .line 54
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 57
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {v0, p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 3
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 4
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    .line 5
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fValidation:Z

    .line 11
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    .line 12
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalParameterEntities:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    .line 14
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->reset()V

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    .line 20
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fValidation:Z
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 21
    :catch_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fValidation:Z

    :goto_1
    :try_start_2
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    .line 22
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 23
    :catch_2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    :goto_2
    :try_start_3
    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    .line 24
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 25
    :catch_3
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalParameterEntities:Z

    :goto_3
    :try_start_4
    const-string v0, "http://apache.org/xml/features/allow-java-encodings"

    .line 26
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 27
    :catch_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    :goto_4
    :try_start_5
    const-string v0, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    .line 28
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 29
    :catch_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    :goto_5
    :try_start_6
    const-string v0, "http://apache.org/xml/features/standard-uri-conformant"

    .line 30
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStrictURI:Z
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 31
    :catch_6
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStrictURI:Z

    :goto_6
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 32
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 33
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 34
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 35
    :catch_7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    :goto_7
    :try_start_8
    const-string v1, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    .line 36
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 37
    :catch_8
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    :goto_8
    :try_start_9
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    .line 38
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    .line 39
    :catch_9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    :goto_9
    :try_start_a
    const-string v1, "http://apache.org/xml/properties/security-manager"

    .line 40
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;
    :try_end_a
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    .line 41
    :catch_a
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    .line 42
    :goto_a
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->reset()V

    .line 43
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 44
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v8, :cond_2

    iget-object v8, v8, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    invoke-static {v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz v5, :cond_4

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public resolveEntityAsPerStax(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v8, :cond_2

    iget-object v8, v8, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    invoke-static {v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :cond_3
    instance-of v5, p1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    if-eqz v5, :cond_4

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->clear()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    :goto_2
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    new-instance v4, Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    invoke-direct {v4, v0}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    :cond_7
    if-nez v4, :cond_8

    new-instance v4, Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p0}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->hasXMLStreamOrXMLEventReader()Z

    :goto_4
    return-object v4
.end method

.method public setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v0, "allow-java-encodings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void

    :cond_0
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    return-void

    :cond_1
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const-string v1, "internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-void

    :cond_2
    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    const-string v1, "input-buffer-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setBufferSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferPool:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$CharacterBufferPool;->setExternalBufferSize(I)V

    :cond_3
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const-string v0, "security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p2, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->getEntityExpansionLimit()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    :cond_5
    return-void
.end method

.method public setScannerVersion(S)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1, v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML10EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setCurrentEntity(Lcom/sun/xml/internal/stream/Entity$ScannedEntity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    if-nez p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XML11EntityScanner;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XML11EntityScanner;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1, v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->reset(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fXML11EntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setCurrentEntity(Lcom/sun/xml/internal/stream/Entity$ScannedEntity;)V

    :goto_0
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStandalone:Z

    return-void
.end method

.method public setupCurrentEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v14, v7

    goto :goto_0

    :cond_0
    move v14, v6

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v8

    iget-boolean v9, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fStrictURI:Z

    invoke-static {v3, v4, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_1

    move-object v4, v9

    :cond_1
    if-nez v8, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    instance-of v11, v8, Ljava/net/HttpURLConnection;

    if-nez v11, :cond_2

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_3

    :cond_2
    instance-of v11, v1, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;

    if-eqz v11, :cond_4

    move-object v11, v8

    check-cast v11, Ljava/net/HttpURLConnection;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v15, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v11, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setInstanceFollowRedirects(Ljava/net/HttpURLConnection;Z)V

    goto :goto_2

    :cond_4
    move v1, v7

    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move-object v3, v1

    move-object v9, v3

    :cond_6
    move-object v8, v11

    :cond_7
    :goto_3
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$RewindableInputStream;

    invoke-direct {v1, v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager$RewindableInputStream;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;Ljava/io/InputStream;)V

    const-string v13, "UTF-8"

    const/4 v10, 0x2

    const/4 v8, 0x4

    if-nez v5, :cond_b

    new-array v11, v8, [B

    move v12, v6

    :goto_4
    if-ge v12, v8, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    if-ne v12, v8, :cond_a

    invoke-virtual {v0, v11, v12}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v5

    aget-object v8, v5, v6

    check-cast v8, Ljava/lang/String;

    aget-object v5, v5, v7

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    if-le v12, v10, :cond_9

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    aget-byte v6, v11, v6

    const/16 v12, 0xff

    and-int/2addr v6, v12

    aget-byte v7, v11, v7

    and-int/2addr v7, v12

    aget-byte v10, v11, v10

    and-int/2addr v10, v12

    const/16 v11, 0xef

    if-ne v6, v11, :cond_9

    const/16 v6, 0xbb

    if-ne v7, v6, :cond_9

    const/16 v6, 0xbf

    if-ne v10, v6, :cond_9

    const-wide/16 v6, 0x3

    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_9
    invoke-virtual {v0, v1, v8, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v5

    move-object v6, v5

    move-object v5, v8

    goto/16 :goto_14

    :cond_a
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v5, v11}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v6

    goto/16 :goto_14

    :cond_b
    const/4 v11, 0x0

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, -0x1

    const/4 v15, 0x3

    if-eqz v12, :cond_10

    new-array v8, v15, [I

    move v12, v6

    :goto_5
    if-ge v12, v15, :cond_d

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v11

    aput v11, v8, v12

    if-ne v11, v13, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :cond_d
    :goto_6
    if-ne v12, v15, :cond_f

    aget v6, v8, v6

    const/16 v11, 0xef

    if-ne v6, v11, :cond_e

    aget v6, v8, v7

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_e

    aget v6, v8, v10

    const/16 v7, 0xbf

    if-eq v6, v7, :cond_24

    :cond_e
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_12

    :cond_f
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_12

    :cond_10
    const-string v11, "UTF-16"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    new-array v12, v8, [I

    move v15, v6

    :goto_7
    if-ge v15, v8, :cond_12

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v8

    aput v8, v12, v15

    if-ne v8, v13, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x4

    goto :goto_7

    :cond_12
    :goto_8
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    if-lt v15, v10, :cond_18

    aget v6, v12, v6

    aget v7, v12, v7

    const-string v8, "UTF-16BE"

    const/16 v13, 0xfe

    const/16 v10, 0xff

    if-ne v6, v13, :cond_13

    if-ne v7, v10, :cond_13

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v10, v6

    :goto_9
    move-object v11, v8

    goto :goto_c

    :cond_13
    const-string v17, "UTF-16LE"

    if-ne v6, v10, :cond_14

    if-ne v7, v13, :cond_14

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    move-object v10, v6

    move-object/from16 v11, v17

    goto :goto_c

    :cond_14
    const/4 v10, 0x4

    if-ne v15, v10, :cond_18

    const/4 v10, 0x2

    aget v10, v12, v10

    const/4 v13, 0x3

    aget v12, v12, v13

    const/16 v13, 0x3c

    if-nez v6, :cond_15

    if-ne v7, v13, :cond_15

    if-nez v10, :cond_15

    const/16 v15, 0x3f

    if-ne v12, v15, :cond_16

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_15
    const/16 v15, 0x3f

    :cond_16
    move-object v8, v11

    const/4 v11, 0x0

    :goto_b
    if-ne v6, v13, :cond_17

    if-nez v7, :cond_17

    if-ne v10, v15, :cond_17

    if-nez v12, :cond_17

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_17
    move-object v10, v11

    goto :goto_9

    :cond_18
    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v0, v1, v11, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    goto/16 :goto_13

    :cond_19
    const-string v8, "ISO-10646-UCS-4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x4

    new-array v10, v8, [I

    move v11, v6

    :goto_d
    if-ge v11, v8, :cond_1b

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v12

    aput v12, v10, v11

    if-ne v12, v13, :cond_1a

    goto :goto_e

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_1b
    :goto_e
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    if-ne v11, v8, :cond_24

    aget v6, v10, v6

    if-nez v6, :cond_1c

    aget v8, v10, v7

    if-nez v8, :cond_1c

    const/4 v8, 0x2

    aget v11, v10, v8

    if-nez v11, :cond_1c

    const/4 v8, 0x3

    aget v11, v10, v8

    const/16 v8, 0x3c

    if-ne v11, v8, :cond_1d

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_13

    :cond_1c
    const/16 v8, 0x3c

    :cond_1d
    if-ne v6, v8, :cond_24

    aget v6, v10, v7

    if-nez v6, :cond_24

    const/4 v6, 0x2

    aget v6, v10, v6

    if-nez v6, :cond_24

    const/4 v6, 0x3

    aget v6, v10, v6

    if-nez v6, :cond_24

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_1e
    const-string v8, "ISO-10646-UCS-2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    const/4 v8, 0x4

    new-array v10, v8, [I

    move v11, v6

    :goto_f
    if-ge v11, v8, :cond_20

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v12

    aput v12, v10, v11

    if-ne v12, v13, :cond_1f

    goto :goto_10

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_20
    :goto_10
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    if-ne v11, v8, :cond_24

    aget v6, v10, v6

    if-nez v6, :cond_22

    aget v8, v10, v7

    const/16 v11, 0x3c

    if-ne v8, v11, :cond_21

    const/4 v8, 0x2

    aget v12, v10, v8

    if-nez v12, :cond_21

    const/4 v8, 0x3

    aget v12, v10, v8

    const/16 v8, 0x3f

    if-ne v12, v8, :cond_23

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_21
    const/16 v8, 0x3f

    goto :goto_11

    :cond_22
    const/16 v8, 0x3f

    const/16 v11, 0x3c

    :cond_23
    :goto_11
    if-ne v6, v11, :cond_24

    aget v6, v10, v7

    if-nez v6, :cond_24

    const/4 v6, 0x2

    aget v6, v10, v6

    if-ne v6, v8, :cond_24

    const/4 v6, 0x3

    aget v6, v10, v6

    if-nez v6, :cond_24

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v0, v1, v5, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v6

    :goto_14
    move-object v11, v1

    move-object v12, v6

    move-object v1, v9

    goto :goto_15

    :cond_25
    move-object v12, v8

    move-object v1, v9

    const/4 v11, 0x0

    :goto_15
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v6, :cond_26

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    new-instance v6, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    new-instance v10, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v10, v2, v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v6

    move-object/from16 v9, p1

    move-object v13, v5

    move v7, v14

    move/from16 v14, p3

    move v15, v7

    move/from16 v16, p4

    invoke-direct/range {v8 .. v16}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V

    iput-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {v6, v7}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->setEncodingExternallySpecified(Z)V

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setCurrentEntity(Lcom/sun/xml/internal/stream/Entity$ScannedEntity;)V

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public startDTDEntity(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startDocumentEntity(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object p2

    .line 57
    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 58
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionLimit:I

    if-le p3, p4, :cond_0

    .line 59
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p4}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x2

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "EntityExpansionLimitExceeded"

    invoke-virtual {p3, v1, v2, p4, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    const/4 p3, 0x0

    .line 60
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityExpansionCount:I

    .line 61
    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    if-eqz p3, :cond_1

    .line 62
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    const/4 p4, 0x0

    invoke-interface {p3, p1, p0, p2, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/xml/internal/stream/Entity;

    const-string v1, "ENTITY_SKIPPED"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->clear()V

    .line 4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    .line 7
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/Entity;->isUnparsed()Z

    move-result v4

    const-string v5, "%"

    .line 12
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 13
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v5, :cond_8

    .line 14
    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fExternalParameterEntities:Z

    if-nez v4, :cond_8

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    if-eqz p2, :cond_7

    .line 16
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->clear()V

    .line 17
    check-cast v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    .line 18
    iget-object p2, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v2

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 20
    :goto_1
    invoke-static {p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    invoke-virtual {v5, v0, p2, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 23
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    .line 25
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 26
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_7
    return-void

    .line 28
    :cond_8
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    move v5, v4

    :goto_3
    if-ltz v5, :cond_11

    if-ne v5, v4, :cond_9

    .line 29
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/internal/stream/Entity;

    .line 30
    :goto_4
    iget-object v6, v6, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    if-ne v6, p1, :cond_10

    add-int/lit8 v5, v5, 0x1

    move-object p2, p1

    :goto_5
    const-string v6, " -> "

    if-ge v5, v4, :cond_a

    .line 31
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/xml/internal/stream/Entity;

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 33
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iget-object p2, p2, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v5

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "RecursiveReference"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 36
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    if-eqz p2, :cond_f

    .line 37
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->clear()V

    if-eqz v3, :cond_e

    .line 38
    check-cast v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    .line 39
    iget-object p2, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_b
    move-object p2, v2

    .line 40
    :goto_6
    iget-object v3, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    move-object v3, v2

    .line 41
    :goto_7
    invoke-static {p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    move-object v0, v2

    :goto_8
    invoke-virtual {v5, v0, p2, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_e
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 44
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fResourceIdentifier:Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    .line 46
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    .line 47
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityHandler:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_f
    return-void

    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    :cond_11
    if-eqz v3, :cond_12

    .line 49
    check-cast v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    .line 50
    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->resolveEntityAsPerStax(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->getXMLInputSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_9

    .line 52
    :cond_12
    check-cast v0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    .line 53
    new-instance v8, Ljava/io/StringReader;

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 55
    :goto_9
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startExternalSubset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method

.method public test()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "/space/home/stax/sun/6thJan2004/zephyr/data/test.txt"

    const-string v2, "/space/home/stax/sun/6thJan2004/zephyr/data/entity.xml"

    const-string v3, "entityUsecase1"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "entityUsecase2"

    const-string v2, "<Test>value</Test>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "entityUsecase3"

    const-string v2, "value3"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "text"

    const-string v2, "Hello World."

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "empty-element"

    const-string v2, "<foo/>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "balanced-element"

    const-string v2, "<foo></foo>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "balanced-element-with-text"

    const-string v2, "<foo>Hello, World</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "balanced-element-with-entity"

    const-string v2, "<foo>&text;</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "unbalanced-entity"

    const-string v2, "<foo>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "recursive-entity"

    const-string v2, "<foo>&recursive-entity2;</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "recursive-entity2"

    const-string v2, "<bar>&recursive-entity3;</bar>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "recursive-entity3"

    const-string v2, "<baz>&recursive-entity;</baz>"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "ch"

    const-string v2, "&#x00A9;"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v1, "ch1"

    const-string v2, "&#84;"

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    const-string v0, "% ch2"

    const-string v1, "param"

    invoke-virtual {p0, v0, v1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
