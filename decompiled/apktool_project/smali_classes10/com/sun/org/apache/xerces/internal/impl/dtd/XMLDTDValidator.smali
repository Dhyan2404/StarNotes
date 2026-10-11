.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentFilter;
.implements Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;
.implements Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;


# static fields
.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field private fBuffer:Ljava/lang/StringBuffer;

.field private fContentSpecTypeStack:[I

.field private fCurrentContentSpecType:I

.field private final fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fElementChildrenLength:I

.field private fElementChildrenOffsetStack:[I

.field private fElementDepth:I

.field private fElementIndexStack:[I

.field private fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fNamespaces:Z

.field private fPerformValidation:Z

.field private final fRootElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fSchemaType:Ljava/lang/String;

.field protected fSeenDoctypeDecl:Z

.field private fSeenRootElement:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

.field private fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

.field private fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fValENTITIES:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValID:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field protected fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    const-string v2, "http://xml.org/sax/features/namespaces"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v3, v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    filled-new-array {v2, v2, v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fRootElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    const/16 v2, 0x8

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/16 v2, 0x20

    new-array v3, v2, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    return-void
.end method

.method private charDataInContent()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v1, v2, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    return-void
.end method

.method private checkContent(I[Lcom/sun/org/apache/xerces/internal/xni/QName;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->contentModelValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    invoke-interface {p0, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;->validate([Lcom/sun/org/apache/xerces/internal/xni/QName;II)I

    move-result p0

    return p0
.end method

.method private ensureStackCapacity(I)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-ne p1, v1, :cond_1

    mul-int/lit8 v1, p1, 0x2

    new-array v2, v1, [I

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v0, v2, p1

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v4, v2

    if-ge v0, v4, :cond_0

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    :cond_1
    return-void
.end method

.method private getAttributeTypeName(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-boolean p0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    :goto_0
    return-object p0

    :pswitch_2
    iget-boolean p0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    :goto_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    return-object p0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_2

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-boolean p0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContentSpecType(I)I
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    :cond_0
    return v0
.end method

.method private normalizeAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Z
    .locals 12

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v3, 0x1

    move v9, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/16 v10, 0x20

    if-ge v5, v1, :cond_3

    aget-char v11, v2, v5

    if-ne v11, v10, :cond_1

    if-eqz v7, :cond_0

    move v8, v3

    move v7, v4

    :cond_0
    if-eqz v8, :cond_2

    if-nez v9, :cond_2

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v8, v4

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    move v8, v4

    move v9, v8

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-lez v6, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method private final rootElementSpecified(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fRootElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addDTDDefaultAttrsAndValidate(Lcom/sun/org/apache/xerces/internal/xni/QName;ILcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-nez v5, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v5

    :goto_0
    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v9, 0x1

    if-eq v5, v4, :cond_b

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v10, v5, v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v11, v10, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v12, v11, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iget-object v13, v11, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v11, v11, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v14, v14, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v15, v14, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    iget-object v14, v14, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ne v15, v6, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    sget-object v15, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-ne v10, v15, :cond_3

    move v15, v9

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_4

    if-nez v6, :cond_4

    if-eqz v14, :cond_6

    :cond_4
    invoke-interface/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v15

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v15, :cond_6

    invoke-interface {v3, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    if-ne v4, v11, :cond_5

    move v4, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, -0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_a

    if-eqz v6, :cond_7

    iget-boolean v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v4, v11}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v8, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v6, v7, v8, v4, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    :cond_7
    if-eqz v14, :cond_a

    iget-boolean v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v4, v11}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v8, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v6, v7, v8, v4, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_8
    iget-boolean v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x3a

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v11, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_9
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v4, v12, v13, v11, v6}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {v3, v4, v10, v14}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v5

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    invoke-interface/range {p3 .. p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v4

    move v5, v8

    :goto_7
    if-ge v5, v4, :cond_16

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v13, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v12, v7, v13, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_c
    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v11, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v11

    const/4 v12, -0x1

    :goto_8
    if-eq v11, v12, :cond_e

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v13, v11, v14}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v13, v10, :cond_d

    move v13, v9

    goto :goto_9

    :cond_d
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v13, v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v11

    goto :goto_8

    :cond_e
    move v13, v8

    :goto_9
    if-nez v13, :cond_f

    iget-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v11, :cond_15

    iget-object v11, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v11, v10}, [Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v13, "MSG_ATTRIBUTE_NOT_DECLARED"

    invoke-virtual {v11, v7, v13, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_a

    :cond_f
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0, v13}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v5, v13}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v14

    const-string v15, "ATTRIBUTE_DECLARED"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v15, v8}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result v14

    if-eqz v14, :cond_11

    sget-object v14, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v13, v14, :cond_11

    invoke-direct {v0, v3, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->normalizeAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Z

    move-result v13

    invoke-interface {v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v15, :cond_10

    iget-object v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v15}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v15

    if-eqz v15, :cond_10

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v13, v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v13, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    filled-new-array {v10, v8, v14}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v7, v13, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_10
    move-object v8, v14

    :cond_11
    iget-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v11, :cond_12

    goto :goto_a

    :cond_12
    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v11, v11, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v13, v11, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    if-ne v13, v9, :cond_13

    iget-object v11, v11, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v13, v10, v8, v11}, [Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v13, "MSG_FIXED_ATTVALUE_INVALID"

    invoke-virtual {v11, v7, v13, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_13
    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v11, v10, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v11, v11, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    if-eq v11, v9, :cond_14

    if-eq v11, v6, :cond_14

    const/4 v13, 0x3

    if-eq v11, v13, :cond_14

    const/4 v13, 0x4

    if-eq v11, v13, :cond_14

    const/4 v13, 0x5

    if-eq v11, v13, :cond_14

    const/4 v13, 0x6

    if-ne v11, v13, :cond_15

    :cond_14
    invoke-virtual {v0, v1, v8, v10}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)V

    :cond_15
    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_16
    :goto_b
    return-void
.end method

.method public characterData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    const/4 p0, 0x1

    return p0
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    :goto_0
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v1

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v5, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_4
    if-eqz p2, :cond_5

    const-string v0, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "character reference"

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_6
    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_7
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "comment"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fRootElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p3, v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v7, v2

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-nez v2, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setCachedDTD(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V

    :cond_1
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

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-virtual {v3, v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)Z

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    iget-boolean v5, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v5, :cond_0

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrammarBucket()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

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

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    if-eq v2, v4, :cond_2

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    add-int/2addr v0, v1

    aget v0, v6, v0

    add-int/2addr v0, v1

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    sub-int/2addr v6, v0

    invoke-direct {p0, v2, v5, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->checkContent(I[Lcom/sun/org/apache/xerces/internal/xni/QName;II)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v5, v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-short v5, v5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    const-string v7, "MSG_CONTENT_INVALID"

    if-ne v5, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v2, "EMPTY"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, v7, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    :cond_0
    if-eq v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "MSG_CONTENT_INCOMPLETE"

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, v7, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/2addr v0, v1

    aget p1, p1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-lt p1, v4, :cond_7

    const/4 p2, 0x0

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    iput v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p2, "MSG_ELEMENT_WITH_ID_REQUIRED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_4
    return-void

    :cond_5
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget p1, p1, p3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    aget p1, p1, p3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_6

    goto :goto_2

    :cond_6
    move v1, p2

    :goto_2
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FWK008 Element stack underflow"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setEntityState(Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->setGrammarFound(Z)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->rootElementSpecified(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "MSG_GRAMMAR_NOT_FOUND"

    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "MSG_ELEMENT_NOT_DECLARED"

    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lcom/sun/org/apache/xerces/internal/xni/QName;ILcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_6
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v2

    if-gt v3, v0, :cond_8

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, v0

    if-gt v2, v3, :cond_9

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    if-nez v0, :cond_b

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildren:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v3, v0

    if-ge v2, v3, :cond_a

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    :cond_b
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->ensureStackCapacity(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    aput v2, v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return v4
.end method

.method public final hasGrammar()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValID:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValIDRef:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValIDRefs:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValENTITY:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValENTITIES:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValNOTATION:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public invalidStandaloneAttDef(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSpace(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result p0

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "processing instruction"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fRootElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->resetIDTables()V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->clear()V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

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
    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->addValidationState(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;)V

    return-void

    :cond_0
    :try_start_1
    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    :goto_1
    :try_start_2
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidation:Z

    :goto_2
    :try_start_3
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_3

    :cond_1
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    :goto_4
    :try_start_4
    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    :goto_5
    :try_start_5
    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    :goto_6
    :try_start_6
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    :goto_7
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->addValidationState(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    :try_start_7
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_8
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->init()V

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

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

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    aget-object v3, v0, v1

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "ENTITY"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->checkStandaloneEntityRef(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startNamespaceScope(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final validate()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public validateDTDattribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p3, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    goto/16 :goto_4

    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p3, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "NMTOKENSInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "NMTOKENInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_4

    :pswitch_1
    iget-boolean p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValIDRefs:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p3, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    goto/16 :goto_4

    :cond_2
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValIDRef:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p3, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p3

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "IDREFSInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_4

    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValID:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    if-eq p2, v4, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_8

    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_4

    :pswitch_4
    iget-boolean p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_9

    :try_start_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValENTITIES:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValENTITY:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    if-eqz p3, :cond_0

    const-string v1, "yes"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method
