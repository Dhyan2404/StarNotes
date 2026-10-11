.class public Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEBUG:Z = false

.field private static final INITIAL_CHUNK_COUNT:I = 0x4

.field private static final LIST_FLAG:S = 0x80s

.field private static final LIST_MASK:S = -0x81s

.field public static final TOP_LEVEL_SCOPE:I = -0x1


# instance fields
.field protected fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

.field private fEpsilonIndex:I

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fNodeIndexStack:[I

.field private fOpStack:[S

.field private fPrevNodeIndexStack:[I

.field private fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field nodeIndex:I

.field private notationDecls:Ljava/util/ArrayList;

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fReadingExternalDTD:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    const/4 v2, 0x4

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fIsImmutable:Z

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    new-array v3, v2, [[[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v2, v2, [[I

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-instance v2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    invoke-direct {v2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fLeafCount:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fEpsilonIndex:I

    new-instance v3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    new-instance v3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-direct {v3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fDepth:I

    iput v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->valueIndex:I

    iput v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->prevNodeIndex:I

    iput v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->nodeIndex:I

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/16 v1, 0x100

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v2, v1, [[Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

    return-void
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/16 v1, 0x100

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

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

.method private printAttribute(I)V
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " { "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object p1, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " }"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resize([[BI)[[B
    .locals 2

    .line 1
    new-array p1, p1, [[B

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[II)[[I
    .locals 2

    .line 5
    new-array p1, p1, [[I

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 2

    .line 9
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 2

    .line 7
    new-array p1, p1, [[Ljava/lang/Object;

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 2

    .line 11
    new-array p1, p1, [[Ljava/lang/String;

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[SI)[[S
    .locals 2

    .line 3
    new-array p1, p1, [[S

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 2

    .line 13
    new-array p1, p1, [[[Ljava/lang/String;

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p8, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq p3, p8, :cond_0

    if-eqz p6, :cond_0

    invoke-direct {p0, p6}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->normalizeDefaultAttrValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Z

    :cond_0
    iget-object p8, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p8, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result p8

    iput p8, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    new-instance p8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {p8}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    iget-object v2, p8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1, p1, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p8, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v2, p8}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result p8

    if-eq p8, v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->createAttributeDecl()I

    move-result p8

    iput p8, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p8, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {p8}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    const/4 p8, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_5

    const-string v3, "#FIXED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v2, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_3
    const-string v3, "#IMPLIED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v0, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_4
    const-string v3, "#REQUIRED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short p8, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    :cond_5
    :goto_1
    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    if-eqz p6, :cond_6

    invoke-virtual {p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_6
    move-object p6, v1

    :goto_2
    iput-object p6, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    if-eqz p7, :cond_7

    invoke-virtual {p7}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_3

    :cond_7
    move-object p6, v1

    :goto_3
    iput-object p6, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iget-object p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-object p4, p5, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const-string p4, "CDATA"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v0, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_8
    const-string p4, "ID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 p4, 0x3

    iput-short p4, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_9
    const-string p4, "IDREF"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 p5, 0x4

    iput-short p5, p4, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    const-string p4, "S"

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_11

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-boolean v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_a
    const-string p4, "ENTITIES"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    iput-boolean v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_b
    const-string p4, "ENTITY"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_4

    :cond_c
    const-string p4, "NMTOKENS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x5

    if-eqz p4, :cond_d

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short p5, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    iput-boolean v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_d
    const-string p4, "NMTOKEN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short p5, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_4

    :cond_e
    const-string p4, "NOTATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_f

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 p4, 0x6

    iput-short p4, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_4

    :cond_f
    const-string p4, "ENUMERATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_10

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short p8, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_4

    :cond_10
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "!!! unknown attribute type "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    :goto_4
    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p3, v1, p2, p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p4, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {p2, p3, p4, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;Z)V

    iget p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->setAttributeDecl(IILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)V

    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    return-void
.end method

.method public createAttributeDecl()I
    .locals 6

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v1

    const/4 v5, 0x0

    aput-short v5, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    return v0
.end method

.method public createElementDecl()I
    .locals 4

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v1

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    return v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    const/4 v0, -0x1

    if-eqz p3, :cond_1

    iget-short p3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result p3

    iput p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    :goto_0
    new-instance p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {p3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iput v0, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    const-string v0, "EMPTY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    iput-short p2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    :cond_2
    const-string v0, "ANY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    iput-short p2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    :cond_3
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "#PCDATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x2

    iput-short p2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    iput-short p2, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, p3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;)V

    iget p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z
    .locals 13

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v3, v3, v1

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v1

    aget-short v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    :cond_1
    :goto_0
    move v9, v0

    move v6, v4

    goto :goto_1

    :cond_2
    and-int/lit16 v4, v2, -0x81

    int-to-short v4, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    move v0, v3

    goto :goto_0

    :goto_1
    iget-object v5, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object p2, p2, v1

    aget-object p2, p2, p1

    iget-object v7, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object p2, p2, v1

    aget-object v8, p2, p1

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object p2, p2, v1

    aget-short v10, p2, p1

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object p2, p2, v1

    aget-object v11, p2, p1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object p0, p0, v1

    aget-object v12, p0, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_2
    return v0
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, p1, v1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    iget-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v1, v1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, p2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    :cond_3
    return v0
.end method

.method public getContentSpecType(I)S
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object p0, p0, v1

    aget-short p0, p0, p1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    and-int/lit16 p0, p0, -0x81

    int-to-short p0, p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getElementDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v3, v3, v1

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object p0, p0, v1

    aget-short p0, p0, p1

    const/4 p1, 0x1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    iput-short v1, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    iget-object p0, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_0

    :cond_1
    and-int/lit16 v2, p0, -0x81

    int-to-short v2, v2

    iput-short v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    iget-object v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    move v0, p1

    :cond_2
    iput-boolean v0, v2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    :goto_0
    iget-object p0, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getFirstElementDeclIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getNextElementDeclIndex(I)I
    .locals 0

    iget p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getNotationDecls()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSymbolTable()Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-object p0
.end method

.method public isCDATAAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I

    move-result p1

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    iget-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLNotationDecl;

    invoke-direct {p3}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLNotationDecl;-><init>()V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public printAttributes(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(I)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    invoke-direct {p0, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->printAttribute(I)V

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " ]"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public printElements()V
    .locals 5

    new-instance v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getElementDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "element decl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAttributeDecl(IILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;)V
    .locals 5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v1, p2, 0xff

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    iget-object p3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    aput-short v3, v2, v1

    iget-boolean v4, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v4, :cond_0

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    aput-short v3, v2, v1

    :cond_0
    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    iget-short v3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    aput-short v3, v2, v1

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object p3, p3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object p3, v0, v1

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, p3

    aget v0, v0, p1

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, p3

    aget v2, v0, p1

    if-ne v2, v1, :cond_3

    aput p2, v0, p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v0, v0, p3

    aget v0, v0, p1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput p2, v1, v0

    :goto_2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object p0, p0, p3

    aput p2, p0, p1

    :cond_4
    return-void
.end method

.method public setElementDecl(ILcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;)V
    .locals 5

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v0, v2, v0

    iget-short v2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    aput-short v2, v0, v1

    iget-object v3, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v3, v3, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    aput-short v2, v0, v1

    :cond_1
    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    iget-object p2, p2, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFirstAttributeDeclIndex(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    return-void
.end method
