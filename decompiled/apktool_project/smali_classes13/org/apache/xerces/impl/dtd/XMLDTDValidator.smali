.class public Lorg/apache/xerces/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
.implements Lorg/apache/xerces/impl/RevalidationHandler;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field public static final J:[Ljava/lang/String;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final O:[Ljava/lang/Boolean;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field public static final Q:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field public static final Z:[Ljava/lang/Object;

.field public static final k0:Z = false

.field public static final q0:Z = false

.field public static final z:I = -0x1


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field protected fBalanceSyntaxTrees:Z

.field protected fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fSeenDoctypeDecl:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValENTITIES:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValID:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected final fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z

.field public final g:Lorg/apache/xerces/xni/QName;

.field public h:I

.field public i:I

.field public final j:Lorg/apache/xerces/xni/QName;

.field public k:Z

.field public l:[I

.field public m:[I

.field public n:[Lorg/apache/xerces/xni/QName;

.field public o:[Lorg/apache/xerces/xni/QName;

.field public p:I

.field public q:[I

.field public r:I

.field public s:Z

.field public t:Z

.field public final u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

.field public final v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

.field public final w:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

.field public final x:Lorg/apache/xerces/xni/QName;

.field public final y:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    const-string v1, "http://apache.org/xml/features/validation/balance-syntax-trees"

    const-string v2, "http://xml.org/sax/features/namespaces"

    const-string v3, "http://xml.org/sax/features/validation"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->J:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->O:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v3, v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->Q:[Ljava/lang/String;

    filled-new-array {v2, v2, v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->Z:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    new-instance v2, Lorg/apache/xerces/xni/QName;

    invoke-direct {v2}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->j:Lorg/apache/xerces/xni/QName;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->k:Z

    const/16 v2, 0x8

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->l:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->m:[I

    new-array v2, v2, [Lorg/apache/xerces/xni/QName;

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    const/16 v2, 0x20

    new-array v3, v2, [Lorg/apache/xerces/xni/QName;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->s:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->w:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->x:Lorg/apache/xerces/xni/QName;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-void

    :cond_0
    new-instance v2, Lorg/apache/xerces/xni/QName;

    invoke-direct {v2}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDTDDefaultAttrsAndValidate(Lorg/apache/xerces/xni/QName;ILorg/apache/xerces/xni/XMLAttributes;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v5, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v5, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v5

    :goto_0
    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v9, 0x1

    if-ne v5, v4, :cond_c

    invoke-interface/range {p3 .. p3}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-lt v11, v10, :cond_1

    return-void

    :cond_1
    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    iget-boolean v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v7, v14, v5, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v5

    :goto_2
    if-ne v5, v4, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v14, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v13, v5, v14}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v13, v13, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v13, v12, :cond_b

    move v13, v9

    :goto_3
    if-nez v13, :cond_4

    iget-boolean v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v5, :cond_a

    iget-object v5, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v5, v12}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v12, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "MSG_ATTRIBUTE_NOT_DECLARED"

    invoke-virtual {v12, v7, v13, v5, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r(Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v11, v13}, Lorg/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v14

    const-string v15, "ATTRIBUTE_DECLARED"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v15, v8}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v13, v14, :cond_6

    invoke-virtual {v0, v3, v11}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u(Lorg/apache/xerces/xni/XMLAttributes;I)Z

    move-result v13

    invoke-interface {v3, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v15, :cond_5

    iget-object v15, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v15}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->b()Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v13, :cond_5

    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v13, v5}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    filled-new-array {v12, v8, v14}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v13, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    move-object v8, v14

    :cond_6
    iget-boolean v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v5, v5, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v13, v5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    if-ne v13, v9, :cond_8

    iget-object v5, v5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v13, v12, v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v12, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "MSG_FIXED_ATTVALUE_INVALID"

    invoke-virtual {v12, v7, v13, v5, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v12, v5, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v12, v12, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eq v12, v9, :cond_9

    if-eq v12, v6, :cond_9

    const/4 v13, 0x3

    if-eq v12, v13, :cond_9

    const/4 v13, 0x4

    if-eq v12, v13, :cond_9

    const/4 v13, 0x5

    if-eq v12, v13, :cond_9

    const/4 v13, 0x6

    if-ne v12, v13, :cond_a

    :cond_9
    invoke-virtual {v0, v1, v8, v5}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v8, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v8, v5}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v5

    goto/16 :goto_2

    :cond_c
    iget-object v8, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v10, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v8, v5, v10}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v8, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v10, v8, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v11, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v12, v10, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r(Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v8

    iget-object v13, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v13, v13, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v14, v13, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iget-object v13, v13, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    if-eqz v13, :cond_d

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    if-ne v14, v6, :cond_e

    move v6, v9

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    sget-object v14, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-ne v8, v14, :cond_f

    move v14, v9

    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_10

    if-nez v6, :cond_10

    if-eqz v13, :cond_11

    :cond_10
    invoke-interface/range {p3 .. p3}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v14

    const/4 v15, 0x0

    :goto_8
    if-lt v15, v14, :cond_12

    :cond_11
    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    invoke-interface {v3, v15}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    if-ne v4, v10, :cond_18

    move v4, v9

    :goto_9
    if-nez v4, :cond_17

    if-eqz v6, :cond_13

    iget-boolean v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v4, :cond_17

    iget-object v4, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v4, v10}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v6, v7, v8, v4, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_b

    :cond_13
    if-eqz v13, :cond_17

    iget-boolean v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v4, :cond_14

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->b()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v4, v10}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v6, v7, v14, v4, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_14
    iget-boolean v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    if-eqz v4, :cond_15

    const/16 v4, 0x3a

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_16

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v9, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_15
    const/4 v6, -0x1

    :cond_16
    :goto_a
    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->x:Lorg/apache/xerces/xni/QName;

    iget-object v7, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v7, v7, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v10, v7}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->x:Lorg/apache/xerces/xni/QName;

    invoke-interface {v3, v4, v8, v13}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v6, -0x1

    :goto_c
    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v5

    move v4, v6

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x0

    const/16 v16, -0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    goto/16 :goto_8

    :cond_19
    :goto_d
    return-void
.end method

.method public characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z
    .locals 3

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    const/4 p0, 0x1

    return p0
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->k:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    iget-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->b()Z

    move-result v1

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    invoke-virtual {v1, v5}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o()V

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v0}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget v6, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "character reference"

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v4, v5, v1, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o()V

    :cond_5
    if-eqz v2, :cond_6

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "comment"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->j:Lorg/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p1, v2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p3, v1, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v7, v2

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {v2, v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/dtd/XMLDTDDescription;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunia/HTREnginev2/em;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2, v1}, Lcom/sunia/HTREnginev2/em;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/dtd/XMLDTDDescription;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->setCachedDTD(Z)V

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->c(Lorg/apache/xerces/impl/dtd/DTDGrammar;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_4
    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V

    :cond_1
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

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->k:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endNamespaceScope(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V
    .locals 0

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    invoke-interface {p1, p0, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

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

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v4}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->w:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-virtual {v3, v5, v6}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->w:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-boolean v5, v3, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v5, :cond_1

    iget-object v3, v3, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    return-object v4

    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->J:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->O:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->Q:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->Z:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->J:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->Q:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public handleEndElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iget-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    if-eq v2, v4, :cond_2

    iget v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    iget-object v6, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    add-int/2addr v0, v1

    aget v0, v6, v0

    add-int/2addr v0, v1

    iget v6, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    sub-int/2addr v6, v0

    invoke-virtual {p0, v2, v5, v0, v6}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p(I[Lorg/apache/xerces/xni/QName;II)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v7, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v5, v2, v7}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v5, v5, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const-string v7, "MSG_CONTENT_INVALID"

    if-ne v5, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v2, "EMPTY"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, v7, p1, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eq v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "MSG_CONTENT_INCOMPLETE"

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, v7, p1, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    add-int/2addr v0, v1

    aget p1, p1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    :cond_3
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;Z)V

    iget p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    if-lt p1, v4, :cond_8

    const/4 p2, 0x0

    if-gez p1, :cond_6

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p1}, Lorg/apache/xerces/xni/QName;->clear()V

    iput v4, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iput v4, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    iput-boolean p2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    iget-boolean p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "MSG_ELEMENT_WITH_ID_REQUIRED"

    invoke-virtual {p2, v3, v0, p3, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->l:[I

    iget p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    aget p1, p1, p3

    iput p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->m:[I

    aget p1, p1, p3

    iput p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_7

    goto :goto_4

    :cond_7
    move v1, p2

    :goto_4
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FWK008 Element stack underflow"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->s:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->s:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->setGrammarFound(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->v(Lorg/apache/xerces/xni/QName;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-nez v0, :cond_1

    iput v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iput v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    iput-boolean v4, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "MSG_GRAMMAR_NOT_FOUND"

    invoke-virtual {v0, v2, v5, v3, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iget-object v5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "MSG_ELEMENT_NOT_DECLARED"

    invoke-virtual {v0, v2, v5, v3, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lorg/apache/xerces/xni/QName;ILorg/apache/xerces/xni/XMLAttributes;)V

    :cond_6
    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iget-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    array-length v3, v2

    if-gt v3, v0, :cond_8

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q:[I

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iget v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    aput v3, v0, v2

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    array-length v2, v0

    if-gt v2, v3, :cond_9

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Lorg/apache/xerces/xni/QName;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    aget-object v0, v0, v2

    if-nez v0, :cond_b

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    array-length v3, v0

    if-lt v2, v3, :cond_a

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    aget-object v0, v0, v2

    goto :goto_2

    :cond_a
    new-instance v3, Lorg/apache/xerces/xni/QName;

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    :cond_c
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->q(I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->l:[I

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->m:[I

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    aput v2, v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    return v4
.end method

.method public final hasGrammar()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNOTATION:Lorg/apache/xerces/impl/dv/DatatypeValidator;
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

.method public invalidStandaloneAttDef(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSpace(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    if-gt v1, v2, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/apache/xerces/xni/QName;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o:[Lorg/apache/xerces/xni/QName;

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/apache/xerces/xni/QName;

    invoke-direct {v2}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xerces/xni/QName;->clear()V

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    return-void
.end method

.method public final p(I[Lorg/apache/xerces/xni/QName;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

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
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    invoke-interface {p0, p2, p3, p4}, Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;->validate([Lorg/apache/xerces/xni/QName;II)I

    move-result p0

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "processing instruction"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    if-ne p1, v1, :cond_2

    mul-int/lit8 v1, p1, 0x2

    new-array v2, v1, [Lorg/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    aget-object v0, v2, p1

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->n:[Lorg/apache/xerces/xni/QName;

    array-length v4, v2

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/apache/xerces/xni/QName;

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v0, v1, [I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->l:[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->l:[I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->m:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->m:[I

    :cond_2
    return-void
.end method

.method public final r(Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v1, :pswitch_data_0

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-boolean p0, v0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    :goto_0
    return-object p0

    :pswitch_2
    iget-boolean p0, v0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    :goto_1
    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    return-object p0

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-lez v0, :cond_3

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_5
    iget-boolean p0, v0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p0, :cond_4

    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_3

    :cond_4
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

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

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->k:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->s:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iput v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->i:I

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->j:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3}, Lorg/apache/xerces/xni/QName;->clear()V

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->clear()V

    iput v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->p:I

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lorg/apache/xerces/impl/validation/ValidationState;)V

    return-void

    :cond_0
    :try_start_1
    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    :goto_1
    :try_start_2
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    :goto_2
    :try_start_3
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v3}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_3

    :cond_1
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    :goto_4
    :try_start_4
    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    :goto_5
    :try_start_5
    const-string v2, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    :goto_6
    :try_start_6
    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    :goto_7
    :try_start_7
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->f:Ljava/lang/String;
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->f:Ljava/lang/String;

    :goto_8
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lorg/apache/xerces/impl/validation/ValidationState;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    iget-boolean v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :try_start_8
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_9
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    return-void
.end method

.method public final s(I)I
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    :cond_0
    return v0
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->o()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->k:Z

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_2

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    aget-object v4, v0, v1

    check-cast v4, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/dtd/DTDGrammar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)Z

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->r:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->h:I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->u:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->g:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v3, "EMPTY"

    const-string v4, "ENTITY"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_CONTENT_INVALID_SPECIFIED"

    invoke-virtual {v0, v3, v4, v2, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->w:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->checkStandaloneEntityRef(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/DTDGrammar;Lorg/apache/xerces/impl/dtd/XMLEntityDecl;Lorg/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startNamespaceScope(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0

    return-void
.end method

.method public t()Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-object p0
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final u(Lorg/apache/xerces/xni/XMLAttributes;I)Z
    .locals 12

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

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

    if-lt v5, v1, :cond_1

    if-lez v6, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_1
    aget-char v11, v2, v5

    if-ne v11, v10, :cond_3

    if-eqz v7, :cond_2

    move v8, v3

    move v7, v4

    :cond_2
    if-eqz v8, :cond_4

    if-nez v9, :cond_4

    iget-object v8, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v8, v4

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->y:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    move v8, v4

    move v9, v8

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public final v(Lorg/apache/xerces/xni/QName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->j:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final validate()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->f:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public validateDTDattribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p3, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v0, p1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-boolean p1, p1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p3, p2, v0}, Lorg/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)V

    goto/16 :goto_9

    :cond_0
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lorg/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-eqz p1, :cond_1

    const-string p1, "NMTOKENSInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :cond_1
    const-string p1, "NMTOKENInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :pswitch_1
    iget-boolean p1, p1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    :goto_1
    invoke-interface {p3, p2, v0}, Lorg/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)V

    goto/16 :goto_9

    :cond_2
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-eqz p1, :cond_3

    const-string p1, "IDREFSInvalid"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lorg/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :pswitch_3
    iget-object p1, p1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_2
    move v3, v0

    goto :goto_5

    :cond_4
    move v3, v0

    :goto_3
    array-length v4, p1

    if-lt v3, v4, :cond_5

    goto :goto_2

    :cond_5
    aget-object v4, p1, v3

    if-eq p2, v4, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    move v3, v2

    :goto_5
    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_9

    :goto_6
    array-length v4, p1

    if-lt v0, v4, :cond_8

    goto :goto_7

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p1, p3, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {p1, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    invoke-virtual {p0, v1, p2, p1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_9

    :pswitch_4
    iget-boolean p1, p1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_a

    :try_start_3
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;

    :goto_8
    invoke-interface {p1, p2, p3}, Lorg/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_9

    :cond_a
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lorg/apache/xerces/impl/validation/ValidationState;
    :try_end_3
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_b
    :goto_9
    return-void

    nop

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

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;

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
    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->d(Z)V

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method
