.class public Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBuffer:Ljava/lang/StringBuffer;

.field private fCurrentContentSpecType:I

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

.field private fElementContentState:[Z

.field private fElementDepth:I

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field private fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    .line 3
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 5
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    const/16 v3, 0x8

    new-array v3, v3, [Z

    .line 7
    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 8
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 9
    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 10
    new-instance v1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 11
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 12
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 13
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    .line 14
    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    .line 17
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 19
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    const/16 v3, 0x8

    new-array v3, v3, [Z

    .line 21
    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 22
    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 23
    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 24
    new-instance v1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 25
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 27
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    .line 28
    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    .line 29
    iput-object p2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    .line 32
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 34
    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    const/16 v2, 0x8

    new-array v2, v2, [Z

    .line 36
    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 37
    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 38
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 39
    new-instance v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 40
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 42
    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    .line 43
    iput-object p2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 44
    iput-object p3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    return-void
.end method

.method private ensureStackCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    array-length v1, v0

    if-ne p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    :cond_0
    return-void
.end method

.method private getAttributeTypeName(Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v1, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-boolean p0, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    :goto_0
    return-object p0

    :pswitch_2
    iget-boolean p0, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

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
    iget-object v2, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v2, v2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_2

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v2, v2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-boolean p0, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

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

.method private normalizeAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Z
    .locals 12

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    iget-object v3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

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

    iget-object v8, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v8, v4

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

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

    iget-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_4

    iget-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method


# virtual methods
.method public addDTDDefaultAttrs(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    iget-object v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_c

    iget-object v4, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v5, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {v4, v1, v5}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    iget-object v4, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v5, v4, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iget-object v7, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v8, v8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v9, v8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    iget-object v8, v8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    sget-object v10, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-ne v4, v10, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v3

    :goto_3
    const/16 v11, 0x3a

    if-eqz v10, :cond_4

    if-nez v9, :cond_4

    if-eqz v8, :cond_8

    :cond_4
    iget-object v9, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    if-eqz v9, :cond_6

    const-string v9, "xmlns"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v0, :cond_5

    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v5

    :goto_4
    iget-object v10, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    check-cast v10, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v10, v9, v8}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_6
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v9

    move v10, v3

    :goto_5
    if-ge v10, v9, :cond_8

    invoke-interface {p2, v10}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    if-ne v12, v5, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    move v2, v3

    :cond_9
    :goto_6
    if-nez v2, :cond_b

    if-eqz v8, :cond_b

    iget-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

    if-eqz v2, :cond_a

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v0, :cond_a

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_a
    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v3, v3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v2, v4, v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v2, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v1

    goto/16 :goto_0

    :cond_c
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v1

    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_11

    invoke-interface {p2, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v6, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v6

    :goto_8
    if-eq v6, v0, :cond_e

    iget-object v7, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v8, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {v7, v6, v8}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    iget-object v7, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v7, v7, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v7, v5, :cond_d

    move v5, v2

    goto :goto_9

    :cond_d
    iget-object v7, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v7, v6}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v6

    goto :goto_8

    :cond_e
    move v5, v3

    :goto_9
    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    iget-object v5, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {p0, v5}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    invoke-interface {p2, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v5, v6, :cond_10

    invoke-direct {p0, p2, v4}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->normalizeAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;I)Z

    invoke-interface {p2, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    :goto_b
    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public handleEndElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    const/4 v0, -0x1

    if-lt p1, v0, :cond_2

    if-gez p1, :cond_1

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FWK008 Element stack underflow"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    iput p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I

    move-result v0

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v2, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getContentSpecType(I)S

    move-result v0

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->ensureStackCapacity(I)V

    iget-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    iget p2, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    aput-boolean p0, p1, p2

    return-void
.end method

.method public isIgnorableWhiteSpace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->isInElementContent()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    :goto_0
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v1, v2

    if-ge p0, v1, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v1, v1, p0

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isInElementContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    return p0
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaces:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput v0, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->handleStartElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    return-void
.end method
