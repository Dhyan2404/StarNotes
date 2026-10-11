.class final Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tokens"
.end annotation


# static fields
.field static final DUMP_TOKENS:Z = false

.field public static final EXPRTOKEN_ATSIGN:I = 0x6

.field public static final EXPRTOKEN_AXISNAME_ANCESTOR:I = 0x21

.field public static final EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF:I = 0x22

.field public static final EXPRTOKEN_AXISNAME_ATTRIBUTE:I = 0x23

.field public static final EXPRTOKEN_AXISNAME_CHILD:I = 0x24

.field public static final EXPRTOKEN_AXISNAME_DESCENDANT:I = 0x25

.field public static final EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF:I = 0x26

.field public static final EXPRTOKEN_AXISNAME_FOLLOWING:I = 0x27

.field public static final EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING:I = 0x28

.field public static final EXPRTOKEN_AXISNAME_NAMESPACE:I = 0x29

.field public static final EXPRTOKEN_AXISNAME_PARENT:I = 0x2a

.field public static final EXPRTOKEN_AXISNAME_PRECEDING:I = 0x2b

.field public static final EXPRTOKEN_AXISNAME_PRECEDING_SIBLING:I = 0x2c

.field public static final EXPRTOKEN_AXISNAME_SELF:I = 0x2d

.field public static final EXPRTOKEN_CLOSE_BRACKET:I = 0x3

.field public static final EXPRTOKEN_CLOSE_PAREN:I = 0x1

.field public static final EXPRTOKEN_COMMA:I = 0x7

.field public static final EXPRTOKEN_DOUBLE_COLON:I = 0x8

.field public static final EXPRTOKEN_DOUBLE_PERIOD:I = 0x5

.field public static final EXPRTOKEN_FUNCTION_NAME:I = 0x20

.field public static final EXPRTOKEN_LITERAL:I = 0x2e

.field public static final EXPRTOKEN_NAMETEST_ANY:I = 0x9

.field public static final EXPRTOKEN_NAMETEST_NAMESPACE:I = 0xa

.field public static final EXPRTOKEN_NAMETEST_QNAME:I = 0xb

.field public static final EXPRTOKEN_NODETYPE_COMMENT:I = 0xc

.field public static final EXPRTOKEN_NODETYPE_NODE:I = 0xf

.field public static final EXPRTOKEN_NODETYPE_PI:I = 0xe

.field public static final EXPRTOKEN_NODETYPE_TEXT:I = 0xd

.field public static final EXPRTOKEN_NUMBER:I = 0x2f

.field public static final EXPRTOKEN_OPEN_BRACKET:I = 0x2

.field public static final EXPRTOKEN_OPEN_PAREN:I = 0x0

.field public static final EXPRTOKEN_OPERATOR_AND:I = 0x10

.field public static final EXPRTOKEN_OPERATOR_DIV:I = 0x13

.field public static final EXPRTOKEN_OPERATOR_DOUBLE_SLASH:I = 0x16

.field public static final EXPRTOKEN_OPERATOR_EQUAL:I = 0x1a

.field public static final EXPRTOKEN_OPERATOR_GREATER:I = 0x1e

.field public static final EXPRTOKEN_OPERATOR_GREATER_EQUAL:I = 0x1f

.field public static final EXPRTOKEN_OPERATOR_LESS:I = 0x1c

.field public static final EXPRTOKEN_OPERATOR_LESS_EQUAL:I = 0x1d

.field public static final EXPRTOKEN_OPERATOR_MINUS:I = 0x19

.field public static final EXPRTOKEN_OPERATOR_MOD:I = 0x12

.field public static final EXPRTOKEN_OPERATOR_MULT:I = 0x14

.field public static final EXPRTOKEN_OPERATOR_NOT_EQUAL:I = 0x1b

.field public static final EXPRTOKEN_OPERATOR_OR:I = 0x11

.field public static final EXPRTOKEN_OPERATOR_PLUS:I = 0x18

.field public static final EXPRTOKEN_OPERATOR_SLASH:I = 0x15

.field public static final EXPRTOKEN_OPERATOR_UNION:I = 0x17

.field public static final EXPRTOKEN_PERIOD:I = 0x4

.field public static final EXPRTOKEN_VARIABLE_REFERENCE:I = 0x30

.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final fgTokenNames:[Ljava/lang/String;


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolMapping:Ljava/util/Hashtable;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/Hashtable;

.field private fTokens:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 49

    const-string v0, "EXPRTOKEN_OPEN_PAREN"

    const-string v1, "EXPRTOKEN_CLOSE_PAREN"

    const-string v2, "EXPRTOKEN_OPEN_BRACKET"

    const-string v3, "EXPRTOKEN_CLOSE_BRACKET"

    const-string v4, "EXPRTOKEN_PERIOD"

    const-string v5, "EXPRTOKEN_DOUBLE_PERIOD"

    const-string v6, "EXPRTOKEN_ATSIGN"

    const-string v7, "EXPRTOKEN_COMMA"

    const-string v8, "EXPRTOKEN_DOUBLE_COLON"

    const-string v9, "EXPRTOKEN_NAMETEST_ANY"

    const-string v10, "EXPRTOKEN_NAMETEST_NAMESPACE"

    const-string v11, "EXPRTOKEN_NAMETEST_QNAME"

    const-string v12, "EXPRTOKEN_NODETYPE_COMMENT"

    const-string v13, "EXPRTOKEN_NODETYPE_TEXT"

    const-string v14, "EXPRTOKEN_NODETYPE_PI"

    const-string v15, "EXPRTOKEN_NODETYPE_NODE"

    const-string v16, "EXPRTOKEN_OPERATOR_AND"

    const-string v17, "EXPRTOKEN_OPERATOR_OR"

    const-string v18, "EXPRTOKEN_OPERATOR_MOD"

    const-string v19, "EXPRTOKEN_OPERATOR_DIV"

    const-string v20, "EXPRTOKEN_OPERATOR_MULT"

    const-string v21, "EXPRTOKEN_OPERATOR_SLASH"

    const-string v22, "EXPRTOKEN_OPERATOR_DOUBLE_SLASH"

    const-string v23, "EXPRTOKEN_OPERATOR_UNION"

    const-string v24, "EXPRTOKEN_OPERATOR_PLUS"

    const-string v25, "EXPRTOKEN_OPERATOR_MINUS"

    const-string v26, "EXPRTOKEN_OPERATOR_EQUAL"

    const-string v27, "EXPRTOKEN_OPERATOR_NOT_EQUAL"

    const-string v28, "EXPRTOKEN_OPERATOR_LESS"

    const-string v29, "EXPRTOKEN_OPERATOR_LESS_EQUAL"

    const-string v30, "EXPRTOKEN_OPERATOR_GREATER"

    const-string v31, "EXPRTOKEN_OPERATOR_GREATER_EQUAL"

    const-string v32, "EXPRTOKEN_FUNCTION_NAME"

    const-string v33, "EXPRTOKEN_AXISNAME_ANCESTOR"

    const-string v34, "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF"

    const-string v35, "EXPRTOKEN_AXISNAME_ATTRIBUTE"

    const-string v36, "EXPRTOKEN_AXISNAME_CHILD"

    const-string v37, "EXPRTOKEN_AXISNAME_DESCENDANT"

    const-string v38, "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF"

    const-string v39, "EXPRTOKEN_AXISNAME_FOLLOWING"

    const-string v40, "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING"

    const-string v41, "EXPRTOKEN_AXISNAME_NAMESPACE"

    const-string v42, "EXPRTOKEN_AXISNAME_PARENT"

    const-string v43, "EXPRTOKEN_AXISNAME_PRECEDING"

    const-string v44, "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING"

    const-string v45, "EXPRTOKEN_AXISNAME_SELF"

    const-string v46, "EXPRTOKEN_LITERAL"

    const-string v47, "EXPRTOKEN_NUMBER"

    const-string v48, "EXPRTOKEN_VARIABLE_REFERENCE"

    filled-new-array/range {v0 .. v48}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fgTokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    const/4 v1, 0x0

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fSymbolMapping:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v2, "ancestor"

    const-string v3, "ancestor-or-self"

    const-string v4, "attribute"

    const-string v5, "child"

    const-string v6, "descendant"

    const-string v7, "descendant-or-self"

    const-string v8, "following"

    const-string v9, "following-sibling"

    const-string v10, "namespace"

    const-string v11, "parent"

    const-string v12, "preceding"

    const-string v13, "preceding-sibling"

    const-string v14, "self"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fSymbolMapping:Ljava/util/Hashtable;

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "EXPRTOKEN_OPEN_PAREN"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_CLOSE_PAREN"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPEN_BRACKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_CLOSE_BRACKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_PERIOD"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_DOUBLE_PERIOD"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_ATSIGN"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_COMMA"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_DOUBLE_COLON"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NAMETEST_ANY"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NAMETEST_NAMESPACE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NAMETEST_QNAME"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NODETYPE_COMMENT"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NODETYPE_TEXT"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NODETYPE_PI"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NODETYPE_NODE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_AND"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_OR"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_MOD"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_DIV"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_MULT"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_SLASH"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_DOUBLE_SLASH"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_UNION"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_PLUS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_MINUS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_EQUAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_NOT_EQUAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_LESS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_LESS_EQUAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_GREATER"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_OPERATOR_GREATER_EQUAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_FUNCTION_NAME"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_ANCESTOR"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_ATTRIBUTE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_CHILD"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_DESCENDANT"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_FOLLOWING"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_NAMESPACE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_PARENT"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_PRECEDING"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_AXISNAME_SELF"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_LITERAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "EXPRTOKEN_NUMBER"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "EXPRTOKEN_VARIABLE_REFERENCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addToken(I)V
    .locals 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    .line 7
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    aput p1, v0, v1

    .line 10
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    return-void
.end method

.method public addToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->addToken(I)V

    return-void
.end method

.method public dumpTokens()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v1, v1, v0

    const-string v2, " localpart=\""

    const/4 v3, -0x1

    const-string v4, " prefix=\""

    const-string v5, "/>"

    const-string v6, "\""

    packed-switch v1, :pswitch_data_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<???/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "<VARIABLE_REFERENCE"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NUMBER"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " whole=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " part=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<LITERAL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " value=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PRECEDING_SIBLING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PRECEDING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PARENT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_NAMESPACE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_FOLLOWING_SIBLING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_FOLLOWING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_DESCENDANT_OR_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_DESCENDANT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_CHILD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ATTRIBUTE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ANCESTOR_OR_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ANCESTOR/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "<FUNCTION_NAME"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v3, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_GREATER_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_GREATER/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_LESS_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_LESS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_NOT_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_17
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MINUS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_PLUS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_UNION/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_DOUBLE_SLASH/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_SLASH/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ge v1, v2, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MULT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_DIV/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_OR/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_AND/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_NODE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_22
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_PI/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_23
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_TEXT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_COMMENT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "<NAMETEST_QNAME"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v3, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_26
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NAMETEST_NAMESPACE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NAMETEST_ANY/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_28
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<DOUBLE_COLON/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<COMMA/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<ATSIGN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<DOUBLE_PERIOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<PERIOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<CLOSE_BRACKET/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPEN_BRACKET/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<CLOSE_PAREN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_30
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPEN_PAREN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTokenString(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasMore()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    aget p0, v1, v0

    return p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextTokenAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public peekToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fTokens:[I

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
