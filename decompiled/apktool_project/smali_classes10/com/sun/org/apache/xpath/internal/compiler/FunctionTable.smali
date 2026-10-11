.class public Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FUNC_BOOLEAN:I = 0xe

.field public static final FUNC_CEILING:I = 0x11

.field public static final FUNC_CONCAT:I = 0x1b

.field public static final FUNC_CONTAINS:I = 0x16

.field public static final FUNC_COUNT:I = 0x3

.field public static final FUNC_CURRENT:I = 0x0

.field public static final FUNC_DOCLOCATION:I = 0x23

.field public static final FUNC_EXT_ELEM_AVAILABLE:I = 0x22

.field public static final FUNC_EXT_FUNCTION_AVAILABLE:I = 0x21

.field public static final FUNC_FALSE:I = 0xd

.field public static final FUNC_FLOOR:I = 0x10

.field public static final FUNC_GENERATE_ID:I = 0xa

.field public static final FUNC_ID:I = 0x4

.field public static final FUNC_KEY:I = 0x5

.field public static final FUNC_LANG:I = 0x20

.field public static final FUNC_LAST:I = 0x1

.field public static final FUNC_LOCAL_PART:I = 0x7

.field public static final FUNC_NAMESPACE:I = 0x8

.field public static final FUNC_NORMALIZE_SPACE:I = 0x19

.field public static final FUNC_NOT:I = 0xb

.field public static final FUNC_NUMBER:I = 0xf

.field public static final FUNC_POSITION:I = 0x2

.field public static final FUNC_QNAME:I = 0x9

.field public static final FUNC_ROUND:I = 0x12

.field public static final FUNC_STARTS_WITH:I = 0x15

.field public static final FUNC_STRING:I = 0x14

.field public static final FUNC_STRING_LENGTH:I = 0x1e

.field public static final FUNC_SUBSTRING:I = 0x1d

.field public static final FUNC_SUBSTRING_AFTER:I = 0x18

.field public static final FUNC_SUBSTRING_BEFORE:I = 0x17

.field public static final FUNC_SUM:I = 0x13

.field public static final FUNC_SYSTEM_PROPERTY:I = 0x1f

.field public static final FUNC_TRANSLATE:I = 0x1a

.field public static final FUNC_TRUE:I = 0xc

.field public static final FUNC_UNPARSED_ENTITY_URI:I = 0x24

.field private static final NUM_ALLOWABLE_ADDINS:I = 0x1e

.field private static final NUM_BUILT_IN_FUNCS:I = 0x25

.field private static m_functionID:Ljava/util/HashMap;

.field private static m_functions:[Ljava/lang/Class;


# instance fields
.field private m_funcNextFreeIndex:I

.field private m_functionID_customer:Ljava/util/HashMap;

.field private m_functions_customer:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const/16 v1, 0x25

    new-array v1, v1, [Ljava/lang/Class;

    sput-object v1, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncCurrent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncLast;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncCount;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncId;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncLocalPart;

    const/4 v8, 0x7

    aput-object v2, v1, v8

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncNamespace;

    const/16 v9, 0x8

    aput-object v2, v1, v9

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncQname;

    const/16 v10, 0x9

    aput-object v2, v1, v10

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncGenerateId;

    const/16 v11, 0xa

    aput-object v2, v1, v11

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncNot;

    const/16 v12, 0xb

    aput-object v2, v1, v12

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncTrue;

    const/16 v13, 0xc

    aput-object v2, v1, v13

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncFalse;

    const/16 v14, 0xd

    aput-object v2, v1, v14

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncBoolean;

    const/16 v15, 0xe

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncLang;

    const/16 v15, 0x20

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncNumber;

    const/16 v15, 0xf

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncFloor;

    const/16 v15, 0x10

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncCeiling;

    const/16 v15, 0x11

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncRound;

    const/16 v15, 0x12

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncSum;

    const/16 v15, 0x13

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncString;

    const/16 v15, 0x14

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncStartsWith;

    const/16 v15, 0x15

    aput-object v2, v1, v15

    const-class v2, Lcom/sun/org/apache/xpath/internal/functions/FuncContains;

    const/16 v15, 0x16

    aput-object v2, v1, v15

    const/16 v2, 0x17

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncSubstringBefore;

    aput-object v16, v1, v2

    const/16 v2, 0x18

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncSubstringAfter;

    aput-object v16, v1, v2

    const/16 v2, 0x19

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncNormalizeSpace;

    aput-object v16, v1, v2

    const/16 v2, 0x1a

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncTranslate;

    aput-object v16, v1, v2

    const/16 v2, 0x1b

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncConcat;

    aput-object v16, v1, v2

    const/16 v2, 0x1f

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncSystemProperty;

    aput-object v16, v1, v2

    const/16 v2, 0x21

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;

    aput-object v16, v1, v2

    const/16 v2, 0x22

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncExtElementAvailable;

    aput-object v16, v1, v2

    const/16 v2, 0x1d

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncSubstring;

    aput-object v16, v1, v2

    const/16 v2, 0x1e

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncStringLength;

    aput-object v16, v1, v2

    const/16 v2, 0x23

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncDoclocation;

    aput-object v16, v1, v2

    const/16 v2, 0x24

    const-class v16, Lcom/sun/org/apache/xpath/internal/functions/FuncUnparsedEntityURI;

    aput-object v16, v1, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "last"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "local-name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "namespace-uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "generate-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "not"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "true"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "floor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ceiling"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "round"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "sum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "string"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "starts-with"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "contains"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring-before"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring-after"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "normalize-space"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "translate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "concat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "system-property"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "function-available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "element-available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "string-length"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "unparsed-entity-uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "document-location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    const/16 v0, 0x25

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_funcNextFreeIndex:I

    return-void
.end method


# virtual methods
.method public functionAvailable(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFunction(I)Lcom/sun/org/apache/xpath/internal/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x25

    if-ge p1, v0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/functions/Function;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/functions/Function;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFunctionID(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getFunctionName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x25

    if-ge p1, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public installFunction(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x25

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_funcNextFreeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_funcNextFreeIndex:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    add-int/lit8 p1, v0, -0x25

    aput-object p2, p0, p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_funcNextFreeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_funcNextFreeIndex:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    add-int/lit8 v2, v0, -0x25

    aput-object p2, v1, v2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0
.end method
