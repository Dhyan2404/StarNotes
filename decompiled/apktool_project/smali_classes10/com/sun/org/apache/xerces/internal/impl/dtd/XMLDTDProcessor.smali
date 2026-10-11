.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDFilter;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelFilter;


# static fields
.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field protected fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

.field protected fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

.field private fDTDElementDeclName:Ljava/lang/String;

.field private fDTDElementDecls:Ljava/util/Vector;

.field protected fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

.field protected fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

.field protected fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field protected fDTDValidation:Z

.field private fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fInDTDIgnore:Z

.field protected fLocale:Ljava/util/Locale;

.field private fMixed:Z

.field private fMixedElementTypes:Ljava/util/Vector;

.field private fNDataDeclNotations:Ljava/util/Hashtable;

.field private fNotationEnumVals:Ljava/util/Hashtable;

.field private fPerformValidation:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTableOfIDAttributeNames:Ljava/util/Hashtable;

.field private fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

.field protected fValidation:Z

.field protected fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v2, "http://xml.org/sax/features/validation"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/Vector;

    return-void
.end method

.method public static checkStandaloneEntityRef(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)Z

    iget-boolean p1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-eqz p1, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v0, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    invoke-virtual {p3, p2, v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method private normalizeDefaultAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Z
    .locals 8

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    add-int/2addr p0, v0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x0

    if-ge v0, p0, :cond_3

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v6, v5, v0

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v5, v2

    move v2, v3

    move v3, v1

    goto :goto_1

    :cond_0
    if-eq v2, v0, :cond_1

    aput-char v6, v5, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, p0, :cond_5

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    sub-int/2addr v2, p0

    iput v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    return v1

    :cond_5
    return v4
.end method


# virtual methods
.method public any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v12, v1, :cond_0

    if-eqz v15, :cond_0

    invoke-direct {v0, v15}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->normalizeDefaultAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Z

    :cond_0
    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v10}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3, v2, v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_7

    if-eqz v15, :cond_5

    iget v2, v15, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-eqz v2, :cond_5

    if-eqz v14, :cond_4

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIMPLIEDSymbol:Ljava/lang/String;

    if-eq v14, v2, :cond_5

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fREQUIREDSymbol:Ljava/lang/String;

    if-eq v14, v2, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v6, "IDDefaultTypeInvalid"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v2, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v7, "MSG_MORE_THAN_ONE_ID_ATTRIBUTE"

    filled-new-array {v10, v2, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v3, v7, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    :goto_2
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_a

    move v2, v4

    :goto_3
    array-length v6, v13

    if-ge v2, v6, :cond_8

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    aget-object v7, v13, v2

    invoke-virtual {v6, v7, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v6, "MSG_MORE_THAN_ONE_NOTATION_ATTRIBUTE"

    filled-new-array {v10, v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v6, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_a
    :goto_4
    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-eq v12, v1, :cond_b

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v1, :cond_f

    :cond_b
    move v1, v4

    :goto_5
    array-length v2, v13

    if-ge v1, v2, :cond_f

    add-int/lit8 v2, v1, 0x1

    move v6, v2

    :goto_6
    array-length v7, v13

    if-ge v6, v7, :cond_e

    aget-object v7, v13, v1

    aget-object v8, v13, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v6, :cond_c

    const-string v6, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    goto :goto_7

    :cond_c
    const-string v6, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    :goto_7
    aget-object v1, v13, v1

    filled-new-array {v10, v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v6, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_8

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_5

    :cond_f
    :goto_8
    if-eqz v15, :cond_1f

    if-eqz v14, :cond_10

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fFIXEDSymbol:Ljava/lang/String;

    if-ne v14, v1, :cond_1f

    :cond_10
    invoke-virtual/range {p6 .. p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_18

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_18

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_11

    goto :goto_d

    :cond_11
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_12

    goto :goto_9

    :cond_12
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_13

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_15

    :cond_13
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_14
    :goto_9
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_a
    move v2, v4

    goto :goto_b

    :cond_15
    move v2, v5

    :goto_b
    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-eq v12, v6, :cond_16

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v6, :cond_1e

    :cond_16
    move v2, v4

    :goto_c
    array-length v6, v13

    if-ge v4, v6, :cond_1e

    aget-object v6, v13, v4

    invoke-virtual {v15, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->equals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    move v2, v5

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v2, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_19
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    if-ne v12, v7, :cond_1a

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_e

    :cond_1a
    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-eq v12, v7, :cond_1b

    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    if-ne v12, v7, :cond_1c

    :cond_1b
    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_19

    :cond_1d
    move v4, v5

    :goto_e
    move v2, v4

    :cond_1e
    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v4, "MSG_ATT_DEFAULT_INVALID"

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1f
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_20
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_21
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "DuplicateTypeInMixedContent"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_ELEMENT_ALREADY_DECLARED"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    aput-object v4, v2, v3

    const-string v3, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, -0x1

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v7, "MSG_NOTATION_NOT_DECLARED_FOR_UNPARSED_ENTITYDECL"

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v7, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v8, "MSG_NOTATION_NOT_DECLARED_FOR_NOTATIONTYPE_ATTRIBUTE"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v5, v8, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v4

    if-ne v4, v1, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v7, "NoNotationOnEmptyElement"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v5, v7, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    :cond_8
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_9
    return-void
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public getDTDContentModelHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDContentModelSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-object p0
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDTDSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

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
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

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

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public isValidName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidNmtoken(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "UniqueNotationName"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixed:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    .line 22
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 23
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/Hashtable;

    :cond_1
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

    .line 1
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->reset()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    .line 3
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4
    :catch_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    :goto_1
    :try_start_2
    const-string v2, "http://apache.org/xml/features/validation/schema"

    .line 5
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 6
    :catch_2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z

    :goto_3
    :try_start_3
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    .line 7
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 8
    :catch_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    :goto_4
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 9
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 10
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v0, 0x0

    :try_start_4
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 11
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 12
    :catch_4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_5
    :try_start_5
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    .line 13
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 14
    :catch_5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    goto :goto_6

    .line 15
    :catch_6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    .line 16
    :goto_6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->getGrammarBucket()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    goto :goto_7

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    .line 19
    :goto_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->reset()V

    return-void
.end method

.method public separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

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

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fMixed:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;->startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->checkStandaloneEntityRef(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method
