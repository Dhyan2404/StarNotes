.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
.implements Lcom/sun/org/apache/xerces/internal/impl/validation/EntityState;
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;,
        Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;
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
.field protected fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclIsExternal:[[I

.field private fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field private fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

.field private fContentSpecCount:I

.field private fContentSpecOtherValue:[[Ljava/lang/Object;

.field private fContentSpecType:[[S

.field private fContentSpecValue:[[Ljava/lang/Object;

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

.field private fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

.field private fElementDeclContentSpecIndex:[[I

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclIsExternal:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityBaseSystemId:[[Ljava/lang/String;

.field private fEntityCount:I

.field private fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

.field private fEntityInExternal:[[B

.field private fEntityIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityIsPE:[[B

.field private fEntityName:[[Ljava/lang/String;

.field private fEntityNotation:[[Ljava/lang/String;

.field private fEntityPublicId:[[Ljava/lang/String;

.field private fEntitySystemId:[[Ljava/lang/String;

.field private fEntityValue:[[Ljava/lang/String;

.field private fEpsilonIndex:I

.field protected fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fMixed:Z

.field private fNodeIndexStack:[I

.field private fNotationBaseSystemId:[[Ljava/lang/String;

.field private fNotationCount:I

.field private fNotationIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

.field private fNotationName:[[Ljava/lang/String;

.field private fNotationPublicId:[[Ljava/lang/String;

.field private fNotationSystemId:[[Ljava/lang/String;

.field private fOpStack:[S

.field private fPEDepth:I

.field private fPEntityStack:[Z

.field private fPrevNodeIndexStack:[I

.field private fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field nodeIndex:I

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    const/4 v2, 0x4

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fIsImmutable:Z

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    new-array v3, v2, [[[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v3, v2, [[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v3, v2, [[I

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecCount:I

    new-array v3, v2, [[S

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    new-array v3, v2, [[Ljava/lang/Object;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    new-array v3, v2, [[Ljava/lang/Object;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityCount:I

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    new-array v3, v2, [[B

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    new-array v3, v2, [[B

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationCount:I

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEpsilonIndex:I

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->valueIndex:I

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->prevNodeIndex:I

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->nodeIndex:I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    return-void
.end method

.method private appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V
    .locals 8

    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const-string v1, "##any"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x29

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "???"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_0
    const-string p0, "##local"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_1
    const-string p0, "##other:uri="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p0, :cond_c

    const-string p0, ":uri="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-short p4, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v6

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v6

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-eq v2, p4, :cond_1

    move v6, v7

    :cond_1
    invoke-direct {p0, p1, p2, v6, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    const/4 v2, 0x4

    if-ne p4, v2, :cond_2

    const/16 p4, 0x7c

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 p4, 0x2c

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    if-eqz p3, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_4
    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_4

    if-ne p4, v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/16 p0, 0x2b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_5
    if-eq p4, v3, :cond_6

    if-eq p4, v2, :cond_6

    if-ne p4, v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    const/16 p0, 0x2a

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_6
    if-eq p4, v3, :cond_8

    if-eq p4, v2, :cond_8

    if-ne p4, v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_6

    :cond_8
    :goto_5
    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    const/16 p0, 0x3f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_7
    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_9

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez p3, :cond_9

    const-string p0, "#PCDATA"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_9
    if-nez p0, :cond_a

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p3, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##any:uri="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_a
    if-nez p0, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short p1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_1
    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, p1, v2, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v2, v1, v0, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;I)V

    goto :goto_3

    :cond_3
    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, [I

    aget v1, v2, v1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_5
    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_CST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto :goto_0

    :cond_8
    :goto_2
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v2, p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    move-object v0, v2

    :goto_3
    return-object v0
.end method

.method private contentSpecTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short p1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, [I

    aget v2, v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v3, :cond_6

    check-cast v3, [I

    aget v1, v3, v1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid content spec type seen in contentSpecTree() method of AbstractDTDGrammar class : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-direct {p0, v2, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->contentSpecTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;)V

    return-void

    :cond_5
    :goto_2
    invoke-direct {p0, v2, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->contentSpecTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;)V

    invoke-direct {p0, v1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->contentSpecTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget p0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-object p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v2, p1

    if-ne p0, v2, :cond_8

    mul-int/lit8 v2, p0, 0x2

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-static {p1, v1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget p0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    mul-int/lit8 p1, p0, 0x2

    new-array p1, p1, [I

    iget-object v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    invoke-static {v2, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    :cond_8
    iget-object p0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, p1

    iget-object p0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-short p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    aput p2, p0, p1

    add-int/2addr p1, v0

    iput p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    return-void
.end method

.method private createChildModel(I)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;
    .locals 6

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    and-int/lit8 v2, v1, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object p1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NPCD"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p1, v0, p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;-><init>(SLcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-object p1

    :cond_3
    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_CST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v4

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v3, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v4, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p1, v0, p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;-><init>(SLcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-object p1

    :cond_7
    :goto_2
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    invoke-virtual {p0, v5, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v5, :cond_8

    iget-short v5, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v5, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v5, v4, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v4, v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName2:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p1, v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;-><init>(SLcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-object p1

    :cond_8
    :goto_3
    iput v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->buildSyntaxTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v0, p1, p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)V

    return-object v0
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;I)[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    const/16 v1, 0x100

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v2, v1, [[Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

    return-void
.end method

.method private ensureContentSpecCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    const/16 v1, 0x100

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v0, p0, p1

    return-void
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;I)[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    const/16 v1, 0x100

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

    return-void
.end method

.method private ensureEntityDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    new-array v2, v1, [B

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    new-array v0, v1, [B

    aput-object v0, p0, p1

    return-void
.end method

.method private ensureNotationDeclCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    aput-object v0, p0, p1

    return-void
.end method

.method private printAttribute(I)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " { "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object p1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

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

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;I)[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;
    .locals 2

    .line 9
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;I)[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;
    .locals 2

    .line 7
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/xni/QName;I)[[Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 2

    .line 13
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 2

    .line 11
    new-array p1, p1, [[Ljava/lang/Object;

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 2

    .line 15
    new-array p1, p1, [[Ljava/lang/String;

    .line 16
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

    .line 17
    new-array p1, p1, [[[Ljava/lang/String;

    .line 18
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public addContentSpecNode(SII)I
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .line 5
    filled-new-array {p2}, [I

    move-result-object p2

    .line 6
    filled-new-array {p3}, [I

    move-result-object p3

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public addContentSpecNode(SLjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public addUniqueLeafNode(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpec:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p8, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result p8

    iput p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    new-instance p8, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-direct {p8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;-><init>()V

    iget-object v2, p8, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1, p1, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p8, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->scope:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v2, p8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result p8

    if-eq p8, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createAttributeDecl()I

    move-result p8

    iput p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-virtual {p8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->clear()V

    const/4 p8, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_4

    const-string v3, "#FIXED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short v2, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_2
    const-string v3, "#IMPLIED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short v0, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_3
    const-string v3, "#REQUIRED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short p8, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    :cond_4
    :goto_1
    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    if-eqz p6, :cond_5

    invoke-virtual {p6}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_5
    move-object p6, v1

    :goto_2
    iput-object p6, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    if-eqz p7, :cond_6

    invoke-virtual {p7}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_3

    :cond_6
    move-object p6, v1

    :goto_3
    iput-object p6, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-object p4, p5, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const-string p4, "CDATA"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_7
    const-string p4, "ID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    const/4 p4, 0x3

    iput-short p4, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_8
    const-string p4, "IDREF"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    const/4 p5, 0x4

    iput-short p5, p4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    const-string p4, "S"

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_10

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-boolean v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_9
    const-string p4, "ENTITIES"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    iput-boolean v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_a
    const-string p4, "ENTITY"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto :goto_4

    :cond_b
    const-string p4, "NMTOKENS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x5

    if-eqz p4, :cond_c

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short p5, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    iput-boolean v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_c
    const-string p4, "NMTOKEN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short p5, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto :goto_4

    :cond_d
    const-string p4, "NOTATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    const/4 p4, 0x6

    iput-short p4, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto :goto_4

    :cond_e
    const-string p4, "ENUMERATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_f

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-short p8, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    goto :goto_4

    :cond_f
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "!!! unknown attribute type "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_4
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p3, v1, p2, p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    invoke-virtual {p2, p3, p4, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;Z)V

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setAttributeDecl(IILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object p2, p3, p2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput p0, p2, p1

    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public createAttributeDecl()I
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v1

    const/4 v5, 0x0

    aput-short v5, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    return v0
.end method

.method public createContentSpec()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureContentSpecCapacity(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    aput-object v3, v1, v0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecCount:I

    return v0
.end method

.method public createElementDecl()I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v1

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    return v0
.end method

.method public createEntityDecl()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityCount:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureEntityDeclCapacity(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v1, v2, v1

    aput-byte v3, v1, v0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityCount:I

    return v0
.end method

.method public createNotationDecl()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationCount:I

    shr-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureNotationDeclCapacity(I)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationCount:I

    return v0
.end method

.method public element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SLjava/lang/String;)I

    move-result p0

    aput p0, p2, v0

    :goto_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    const/4 v0, -0x1

    if-eqz p3, :cond_1

    iget-short p3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result p3

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    :goto_0
    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iput-object v2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->contentModelValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    iput v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->scope:I

    const-string v1, "EMPTY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iput-short v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_2
    const-string v1, "ANY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-short v5, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_3
    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "#PCDATA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_4

    iput-short v4, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    iput-short p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    if-eqz p1, :cond_6

    if-ne p1, v3, :cond_9

    iget-short p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    if-ne p1, v4, :cond_9

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    if-eqz p1, :cond_9

    iget-short p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    if-ne p1, v4, :cond_8

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget p3, p2, v5

    if-ne p3, v0, :cond_7

    aput p1, p2, v5

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, p2, v5

    :cond_8
    :goto_2
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setContentSpecIndex(II)V

    :cond_9
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object p2, p3, p2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput p0, p2, p1

    return-void
.end method

.method public empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fIsImmutable:Z

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ge v0, v1, :cond_0

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v2, v0, 0xff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v1, v3, v1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->setPossibleRoots(Ljava/util/Vector;)V

    :cond_1
    return-void
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget p1, p1, v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    aget-short v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {p0, v2, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget p0, p1, v0

    aput p0, p1, v1

    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    aget-boolean p1, p2, p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p3

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    iget-boolean v9, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)V

    :cond_0
    return-void
.end method

.method public getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-ltz v1, :cond_3

    iget v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    if-lt v1, v4, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iget-object v5, v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v5, v5, v4

    aget-short v5, v5, v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    :cond_1
    :goto_0
    move v12, v3

    move v9, v7

    goto :goto_1

    :cond_2
    and-int/lit16 v7, v5, -0x81

    int-to-short v7, v7

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    move v3, v6

    goto :goto_0

    :goto_1
    iget-object v8, v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v4

    aget-object v2, v2, v1

    iget-object v10, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v11, v2, v1

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v4

    aget-short v13, v2, v1

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v14, v2, v1

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v15, v2, v1

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    aget-object v0, v0, v4

    aget-object v16, v0, v1

    invoke-virtual/range {v8 .. v16}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;)V

    return v6

    :cond_3
    :goto_2
    return v3
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, p2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    return p1

    :cond_3
    return v0
.end method

.method public getAttributeDeclIsExternal(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object p0, p0, v1

    aget p0, p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, p1

    iput-short v1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    iput-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    iput-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentSpecAsString(I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-ltz p1, :cond_12

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v1, v2, v1

    aget p1, v1, p1

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const-string v2, "##any:uri="

    const/4 v3, 0x2

    const-string v4, "#PCDATA"

    const/4 v5, 0x3

    const-string v6, "##any"

    const/4 v7, 0x0

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "???"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :pswitch_0
    const-string p0, "##local"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :pswitch_1
    const-string p0, "##other:uri="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p0, :cond_11

    const-string p0, ":uri="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :pswitch_3
    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto/16 :goto_9

    :pswitch_4
    iget-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v11, [I

    aget v7, v11, v7

    invoke-virtual {p0, v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v7, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v7, :cond_4

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_1

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eq v7, v5, :cond_6

    if-eq v7, v3, :cond_6

    if-ne v7, v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/16 p0, 0x2b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :pswitch_5
    iget-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v11, [I

    aget v7, v11, v7

    invoke-virtual {p0, v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v7, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v7, :cond_a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v3, :cond_7

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v4, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    if-eq v7, v5, :cond_c

    if-eq v7, v3, :cond_c

    if-ne v7, v10, :cond_b

    goto :goto_4

    :cond_b
    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    const/16 p0, 0x2a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_6
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    if-nez v2, :cond_d

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_d
    if-eq v2, v5, :cond_f

    if-eq v2, v3, :cond_f

    if-ne v2, v10, :cond_e

    goto :goto_6

    :cond_e
    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_7

    :cond_f
    :goto_6
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, p1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->appendContentSpec(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_7
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_10

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_10

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_11
    :goto_9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentSpecType(I)S
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

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

.method public getDTDContentModelSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-object p0
.end method

.method public getDTDSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public getElementContentModelValidator(I)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;
    .locals 10

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, p1

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)Z

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;-><init>()V

    invoke-direct {p0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->contentSpecTree(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    const/4 v7, 0x0

    iget v8, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/MixedContentModel;-><init>([Lcom/sun/org/apache/xerces/internal/xni/QName;[IIIZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createChildModel(I)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    move-result-object v2

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aget-object p0, p0, v0

    aput-object v2, p0, p1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown content type for a element decl in getElementContentModelValidator() in AbstractDTDGrammar class"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v2, p1, 0xff

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v1, v3, v1

    aget-short v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iput-short v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    iget-object v1, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iput-boolean v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_0

    :cond_1
    and-int/lit16 v4, v1, -0x81

    int-to-short v4, v4

    iput-short v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    :goto_0
    iget-short v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementContentModelValidator(I)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    move-result-object p0

    iput-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->contentModelValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    :cond_4
    iget-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->datatypeValidator:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    iput-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementDeclIsExternal(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object p0, p0, v1

    aget p0, p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)Z
    .locals 13

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityCount:I

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v4, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v5, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v6, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v7, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v9, v2, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v2, v2, v1

    aget-byte v2, v2, p1

    const/4 v12, 0x1

    if-nez v2, :cond_1

    move v10, v0

    goto :goto_0

    :cond_1
    move v10, v12

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object p0, p0, v1

    aget-byte p0, p0, p1

    if-nez p0, :cond_2

    move v11, v0

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    move-object v3, p2

    invoke-virtual/range {v3 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return v12

    :cond_3
    :goto_2
    return v0
.end method

.method public getEntityDeclIndex(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getFirstElementDeclIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    return-object p0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getNextElementDeclIndex(I)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getNotationDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;)Z
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    invoke-virtual {p2, v1, v2, v3, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNotationDeclIndex(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSymbolTable()Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-object p0
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public initializeContentModelStack()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [S

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v2, -0x1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aput v2, v0, v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    aput v2, p0, v1

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p3

    const-string p4, "%"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    new-instance p4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)V

    :cond_0
    return-void
.end method

.method public isCDATAAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDeclIndex(Lcom/sun/org/apache/xerces/internal/xni/QName;)I

    move-result p1

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getAttributeDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isImmutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fIsImmutable:Z

    return p0
.end method

.method public isNamespaceAware()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;-><init>()V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createNotationDecl()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setNotationDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;)V

    :cond_0
    return-void
.end method

.method public occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez p2, :cond_2

    const/4 p2, 0x2

    const/4 v0, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v1, 0x1

    aget v2, p1, p2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, p1, v1

    invoke-virtual {p0, p2, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, p1, p2

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, p2

    :cond_2
    :goto_0
    return-void
.end method

.method public pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    return-void
.end method

.method public printAttributes(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

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

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->printAttribute(I)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

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

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "element decl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

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

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public putElementNameMapping(Lcom/sun/org/apache/xerces/internal/xni/QName;II)V
    .locals 0

    return-void
.end method

.method public separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    aget-short p2, p2, v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v3, v1, v0

    invoke-virtual {p0, p2, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v0, v0, p2

    aput v0, p1, p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    aput-short v2, p0, p2

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v2, v1, v0

    invoke-virtual {p0, p2, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v0, v0, p2

    aput v0, p1, p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    aput-short v3, p0, p2

    :cond_3
    :goto_0
    return-void
.end method

.method public setAttributeDecl(IILcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;)V
    .locals 5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v1, p2, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLAttributeDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-short v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->type:S

    aput-short v3, v2, v1

    iget-boolean v4, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v4, :cond_0

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    aput-short v3, v2, v1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    iget-short v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultType:S

    aput-short v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->datatypeValidator:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object p3, v0, v1

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

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

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v0, v0, p3

    aget v2, v0, p1

    if-ne v2, v1, :cond_3

    aput p2, v0, p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v0, v0, p3

    aget v0, v0, p1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v1, v2, v1

    aput p2, v1, v0

    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object p0, p0, p3

    aput p2, p0, p1

    :cond_4
    return-void
.end method

.method public setContentSpec(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;)V
    .locals 3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v1, v1, v0

    iget-short v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->type:S

    aput-short v2, v1, p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    aput-object v2, v1, p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object p0, p0, v0

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public setContentSpecIndex(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object p0, p0, v0

    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setElementDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;)V
    .locals 5

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->scope:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclName:[[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v3, v2, v0

    iget-short v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->type:S

    aput-short v4, v3, v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aget-object v3, v3, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->contentModelValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;

    aput-object v4, v3, v1

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->simpleType:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;

    iget-boolean v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLSimpleType;->list:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aget-object v0, v2, v0

    aget-short v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    aput-short v2, v0, v1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)V
    .locals 5

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v2, v2, v0

    iget-boolean v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->isPE:Z

    aput-byte v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v0, v2, v0

    iget-boolean p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->inExternal:Z

    aput-byte p2, v0, v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fEntityIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public setFirstAttributeDeclIndex(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object p0, p0, v0

    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotationDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;)V
    .locals 5

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNotationIndexMap:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fElementDecl:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLElementDecl;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->initializeContentModelStack()V

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

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fOpStack:[S

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    return-void
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fMixed:Z

    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length p3, p2

    if-ne p1, p3, :cond_0

    array-length p1, p2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Z

    array-length p3, p2

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput-boolean p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fPEDepth:I

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance p4, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;-><init>()V

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;->setEntityDecl(ILcom/sun/org/apache/xerces/internal/impl/dtd/XMLEntityDecl;)V

    :cond_0
    return-void
.end method
