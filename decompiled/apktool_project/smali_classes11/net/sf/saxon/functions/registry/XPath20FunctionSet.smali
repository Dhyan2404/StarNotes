.class public Lnet/sf/saxon/functions/registry/XPath20FunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/XPath20FunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/XPath20FunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 46

    const-string v1, "abs"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/Abs;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    const/16 v5, 0x6000

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v3, 0x0

    const/16 v4, 0x6000

    invoke-virtual {v0, v3, v1, v4, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "adjust-date-to-timezone"

    const/4 v7, 0x1

    const-class v8, Lnet/sf/saxon/functions/Adjust_1;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v10, 0x6000

    const v11, 0x8200

    move-object/from16 v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v3, v0, v4, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v10, "adjust-date-to-timezone"

    const/4 v11, 0x2

    const-class v12, Lnet/sf/saxon/functions/Adjust_2;

    const/16 v14, 0x6000

    const v15, 0x8000

    move-object/from16 v9, p0

    move-object v13, v0

    invoke-virtual/range {v9 .. v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v3, v0, v4, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v8, v2, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v10, "adjust-dateTime-to-timezone"

    const/4 v11, 0x1

    const-class v12, Lnet/sf/saxon/functions/Adjust_1;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v15, 0x8200

    move-object v13, v1

    invoke-virtual/range {v9 .. v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v5, v3, v1, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "adjust-dateTime-to-timezone"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/Adjust_2;

    const/16 v18, 0x6000

    const v19, 0x8000

    move-object/from16 v13, p0

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v5, v3, v1, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v8, v2, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v10, "adjust-time-to-timezone"

    const-class v12, Lnet/sf/saxon/functions/Adjust_1;

    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v14, 0x6000

    const v15, 0x8200

    move-object v13, v6

    invoke-virtual/range {v9 .. v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v9, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v5, v3, v6, v4, v9}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "adjust-time-to-timezone"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/Adjust_2;

    move-object/from16 v13, p0

    move-object/from16 v17, v6

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v9, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v5, v3, v6, v4, v9}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v8, v2, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v10, "avg"

    const-class v12, Lnet/sf/saxon/functions/Average;

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v14, 0x6000

    const/16 v15, 0x400

    move-object/from16 v9, p0

    move-object v13, v5

    invoke-virtual/range {v9 .. v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v15, 0xe000

    invoke-virtual {v9, v3, v5, v15, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "base-uri"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    sget-object v27, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v21, 0x6000

    const/16 v22, 0x20c

    move-object/from16 v16, p0

    move-object/from16 v20, v27

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "base-uri"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/BaseUri_1;

    const/16 v25, 0x6000

    const/16 v26, 0x8

    move-object/from16 v20, p0

    move-object/from16 v24, v27

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v14, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v13, 0x1006000

    invoke-virtual {v9, v3, v14, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "boolean"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/BooleanFn;

    sget-object v28, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v28

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v12, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    const v11, 0x100e000

    invoke-virtual {v9, v3, v12, v11, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "ceiling"

    const-class v19, Lnet/sf/saxon/functions/Ceiling;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v20

    const/16 v21, 0x6000

    const/16 v22, 0x2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v10, v4, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "codepoint-equal"

    const-class v23, Lnet/sf/saxon/functions/CodepointEqual;

    const/16 v26, 0x0

    move-object/from16 v20, p0

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v13, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v8, v13, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "codepoints-to-string"

    const-class v19, Lnet/sf/saxon/functions/CodepointsToString;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v9, v3, v10, v15, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "collection"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/CollectionFn;

    const v21, 0xe000

    const/16 v22, 0x208

    move-object/from16 v20, v12

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "collection"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/CollectionFn;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v3, v13, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "compare"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Compare;

    const/16 v21, 0x6000

    const/16 v22, 0x20

    move-object/from16 v20, v10

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v11, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v13, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v11, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v8, v13, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "compare"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v22, 0x8

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v11, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v13, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v11, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v8, v13, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    const/4 v11, 0x2

    move-object/from16 v30, v14

    const/16 v14, 0x4000

    invoke-virtual {v9, v11, v13, v14, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "concat"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Concat;

    const/16 v21, 0x4000

    const/high16 v22, 0x40000

    move-object/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v3, v5, v15, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "contains"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/Contains;

    const/16 v25, 0x4000

    const/16 v26, 0x20

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v3, v13, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v15, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v9, v8, v13, v4, v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "contains"

    const/16 v22, 0x3

    const-class v23, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v26, 0x8

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v3, v13, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v8, v13, v4, v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v11, v13, v14, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "count"

    const-class v19, Lnet/sf/saxon/functions/Count;

    const/16 v21, 0x4000

    const/16 v22, 0x400

    move-object/from16 v20, v10

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v11, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    const v14, 0x100e000

    invoke-virtual {v9, v3, v12, v14, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v11, "current-date"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentDate;

    const/16 v20, 0x4000

    const/16 v21, 0x200

    move-object/from16 v9, p0

    move-object/from16 v29, v10

    move-object v10, v11

    move/from16 v11, v18

    move-object v7, v12

    move-object/from16 v12, v19

    move-object/from16 v33, v13

    move-object v13, v0

    move-object/from16 v34, v30

    move/from16 v14, v20

    move-object/from16 v35, v15

    move/from16 v15, v21

    invoke-virtual/range {v9 .. v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "current-dateTime"

    const/4 v15, 0x0

    const-class v16, Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentDateTime;

    const/16 v18, 0x4000

    const/16 v19, 0x200

    move-object/from16 v13, p0

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "current-time"

    const-class v16, Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentTime;

    move-object/from16 v17, v6

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "data"

    const/4 v15, 0x1

    const-class v16, Lnet/sf/saxon/functions/Data_1;

    const v18, 0xe000

    const/16 v19, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v11, 0x200e000

    invoke-virtual {v9, v3, v7, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "dateTime"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/DateTimeConstructor;

    const/16 v18, 0x6000

    move-object/from16 v17, v1

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v0, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v8, v6, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "day-from-date"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$DayFromDate;

    const/16 v21, 0x6000

    const v22, 0x8000

    move-object/from16 v16, p0

    move-object/from16 v20, v29

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v0, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "day-from-dateTime"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$DayFromDateTime;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v1, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "days-from-duration"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$DaysFromDuration;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v9, v3, v12, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "deep-equal"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/DeepEqual;

    const/16 v26, 0x20

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v7, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v8, v7, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "deep-equal"

    const/16 v22, 0x3

    const-class v23, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v26, 0x8

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0xe000

    invoke-virtual {v9, v3, v7, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    invoke-virtual {v9, v8, v7, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v9

    move-object/from16 v15, v33

    const/16 v13, 0x4000

    const/4 v14, 0x2

    invoke-virtual {v9, v14, v15, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "default-collation"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/StaticContextAccessor$DefaultCollation;

    const/16 v21, 0x4000

    const/16 v22, 0x20

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v9, "distinct-values"

    const/4 v10, 0x1

    const-class v16, Lnet/sf/saxon/functions/DistinctValues;

    const v18, 0xe000

    const/16 v19, 0x420

    move v4, v13

    move-object/from16 v13, p0

    move-object v14, v9

    move-object v9, v15

    move v15, v10

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v10, v3, v5, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "distinct-values"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v19, 0x408

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v10, v3, v5, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v10, v8, v9, v4, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v15, "doc"

    const/16 v16, 0x1

    const-class v17, Lnet/sf/saxon/functions/Doc;

    sget-object v18, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v19, 0x6000

    const/16 v20, 0x208

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v20}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v14, 0x6000

    invoke-virtual {v10, v3, v9, v14, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "doc-available"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/DocAvailable;

    const/16 v26, 0x208

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const/16 v14, 0x6000

    invoke-virtual {v10, v3, v9, v14, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "document-uri"

    const-class v23, Lnet/sf/saxon/functions/DocumentUri_1;

    const/16 v25, 0x6000

    const/16 v26, 0x200

    move-object/from16 v24, v27

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v14, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    move-object/from16 v15, v34

    const v4, 0x1006000

    invoke-virtual {v10, v3, v15, v4, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "element-with-id"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/SuperId$ElementWithId;

    sget-object v14, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const v21, 0xe000

    const/16 v22, 0x4600

    move-object/from16 v16, p0

    move-object/from16 v20, v14

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v10, v3, v9, v11, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "element-with-id"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/SuperId$ElementWithId;

    const v25, 0xe000

    const/16 v26, 0x400

    move-object/from16 v20, p0

    move-object/from16 v24, v14

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v4, v3, v9, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v10, 0x0

    const/16 v11, 0x4000

    invoke-virtual {v4, v8, v15, v11, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "empty"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/Empty;

    const/16 v25, 0x4000

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    move-object/from16 v11, v35

    const v10, 0x100e000

    invoke-virtual {v4, v3, v7, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "encode-for-uri"

    const-class v19, Lnet/sf/saxon/functions/EncodeForUri;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v10, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    const/16 v8, 0x6000

    invoke-virtual {v4, v3, v9, v8, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "ends-with"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/EndsWith;

    const/16 v26, 0x20

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    move-object/from16 v31, v5

    const/4 v5, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v4, v3, v9, v8, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v9, v8, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "ends-with"

    const/16 v22, 0x3

    const-class v23, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v26, 0x8

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/16 v5, 0x6000

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v9, v5, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v9, v5, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v3, 0x2

    const/16 v5, 0x4000

    invoke-virtual {v4, v3, v9, v5, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "escape-html-uri"

    const-class v19, Lnet/sf/saxon/functions/EscapeHtmlUri;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v4, v5, v9, v8, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "error"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/Error;

    const/16 v21, 0x6000

    const/16 v22, 0x200

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "error"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Error;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object/from16 v33, v10

    const/16 v3, 0x6000

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v8, v3, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "error"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Error;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x6000

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v5, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v9, v5, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "error"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/Error;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x6000

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v5, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v9, v5, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const v4, 0xe000

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v7, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "exactly-one"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/TreatFn$ExactlyOne;

    const/16 v21, 0x4000

    const/16 v22, 0x101

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const v4, 0x400e000

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v7, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "exists"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/Exists;

    const/16 v26, 0x400

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v5, 0x0

    const v10, 0x100e000

    invoke-virtual {v3, v5, v7, v10, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "false"

    const/16 v22, 0x0

    const-class v23, Lnet/sf/saxon/functions/ConstantFunction$False;

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v37, "floor"

    const/16 v38, 0x1

    const-class v39, Lnet/sf/saxon/functions/Floor;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v40

    const/16 v41, 0x6000

    const/16 v42, 0x2

    move-object/from16 v36, p0

    invoke-virtual/range {v36 .. v42}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v5

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v4, 0x6000

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v5, v4, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "hours-from-dateTime"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$HoursFromDateTime;

    const/16 v21, 0x6000

    const v22, 0x8000

    move-object/from16 v20, v29

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v3, v5, v1, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "hours-from-duration"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$HoursFromDuration;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v3, v5, v12, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "hours-from-time"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$HoursFromTime;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v3, v5, v6, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "id"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/SuperId$Id;

    const v25, 0xe000

    const/16 v26, 0x4600

    move-object/from16 v20, p0

    move-object/from16 v24, v14

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const v10, 0xe000

    invoke-virtual {v3, v5, v9, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "id"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/SuperId$Id;

    const/16 v26, 0x600

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const v10, 0xe000

    invoke-virtual {v3, v5, v9, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const v4, 0x8004000

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v15, v4, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "idref"

    const-class v19, Lnet/sf/saxon/functions/Idref;

    const v21, 0xe000

    const/16 v22, 0x4200

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v10, 0x0

    const v13, 0xe000

    invoke-virtual {v3, v10, v9, v13, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "idref"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Idref;

    const/16 v22, 0x200

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v10, 0x0

    const v13, 0xe000

    invoke-virtual {v3, v10, v9, v13, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v15, v4, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v3, "implicit-timezone"

    const/4 v4, 0x0

    const-class v16, Lnet/sf/saxon/functions/DynamicContextAccessor$ImplicitTimezone;

    const/16 v17, 0x4000

    const/16 v18, 0x200

    move-object/from16 v19, v5

    move-object/from16 v43, v31

    move-object/from16 v5, p0

    move-object/from16 v44, v6

    move-object v6, v3

    move-object v3, v7

    move v7, v4

    move-object v4, v8

    move-object/from16 v8, v16

    move-object/from16 v30, v9

    move-object v9, v2

    move-object/from16 v45, v33

    move/from16 v10, v17

    move-object/from16 v31, v2

    move v2, v13

    move-object v13, v11

    move/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "in-scope-prefixes"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/InScopePrefixes;

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v20, v30

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    const v6, 0x1004000

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v14, v6, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "index-of"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/IndexOf;

    const/16 v22, 0x20

    move-object/from16 v20, v29

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v7, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    move-object/from16 v8, v43

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8, v2, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    const/16 v7, 0x4000

    const/4 v10, 0x1

    invoke-virtual {v5, v10, v8, v7, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "index-of"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v22, 0x8

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v7, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8, v2, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    const/16 v7, 0x4000

    invoke-virtual {v5, v10, v8, v7, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    move-object/from16 v9, v30

    const/4 v2, 0x2

    invoke-virtual {v5, v2, v9, v7, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "insert-before"

    const-class v19, Lnet/sf/saxon/functions/InsertBefore;

    const/16 v22, 0x0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v5, 0x0

    const v7, 0x400e000

    invoke-virtual {v2, v5, v3, v7, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    move-object/from16 v5, v29

    const/16 v6, 0x4000

    invoke-virtual {v2, v10, v5, v6, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v7, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "iri-to-uri"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/IriToUri;

    const/16 v21, 0x4000

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    move-object/from16 v7, v45

    const/4 v6, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v2, v6, v9, v10, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "lang"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/Lang;

    const/16 v25, 0x4000

    const/16 v26, 0x204

    move-object/from16 v20, p0

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v2, v6, v9, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "lang"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/Lang;

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v2, v6, v9, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x1

    const v10, 0x1004000

    invoke-virtual {v2, v6, v15, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "last"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/PositionAndLast$Last;

    const/16 v21, 0x4000

    const/16 v22, 0x1200

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "local-name"

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v22, 0x204

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "local-name"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/LocalName_1;

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x0

    const v10, 0x1006000

    invoke-virtual {v2, v6, v15, v10, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "local-name-from-QName"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$LocalNameFromQName;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v21, 0x6000

    move-object/from16 v20, v2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    move-object/from16 v35, v13

    const/4 v11, 0x0

    const/16 v13, 0x6000

    invoke-virtual {v6, v11, v4, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "lower-case"

    const-class v19, Lnet/sf/saxon/functions/LowerCase;

    const/16 v21, 0x4000

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x6000

    invoke-virtual {v6, v10, v9, v11, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "matches"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/RegexFunctionSansFlags;

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x6000

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v9, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x1

    const/16 v11, 0x4000

    invoke-virtual {v6, v10, v9, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "matches"

    const/16 v22, 0x3

    const-class v23, Lnet/sf/saxon/functions/Matches;

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x6000

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v9, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x1

    const/16 v11, 0x4000

    invoke-virtual {v6, v10, v9, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v9, v11, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "max"

    const/4 v10, 0x1

    const-class v16, Lnet/sf/saxon/functions/Minimax$Max;

    const/16 v18, 0x6000

    const v19, 0x8420

    move-object/from16 v11, v35

    move-object/from16 v13, p0

    move-object/from16 v32, v2

    move-object v2, v14

    move-object v14, v6

    move-object v6, v15

    move v15, v10

    move-object/from16 v17, v8

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const v15, 0xe000

    invoke-virtual {v10, v14, v8, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "max"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const v19, 0x8408

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const v15, 0xe000

    invoke-virtual {v10, v14, v8, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v13, v9, v15, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "min"

    const/4 v15, 0x1

    const-class v16, Lnet/sf/saxon/functions/Minimax$Min;

    const v19, 0x8420

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const v15, 0xe000

    invoke-virtual {v10, v14, v8, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "min"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const v19, 0x8408

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const v15, 0xe000

    invoke-virtual {v10, v14, v8, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x4000

    invoke-virtual {v10, v13, v9, v15, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "minutes-from-dateTime"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MinutesFromDateTime;

    const/16 v21, 0x6000

    const v22, 0x8000

    move-object/from16 v16, p0

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const/16 v15, 0x6000

    invoke-virtual {v10, v14, v1, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "minutes-from-duration"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MinutesFromDuration;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v14, 0x0

    const/16 v15, 0x6000

    invoke-virtual {v10, v14, v12, v15, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "minutes-from-time"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MinutesFromTime;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    move-object/from16 v15, v44

    const/16 v8, 0x6000

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v15, v8, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "month-from-date"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MonthFromDate;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const/16 v14, 0x6000

    invoke-virtual {v8, v13, v0, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "month-from-dateTime"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MonthFromDateTime;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const/16 v14, 0x6000

    invoke-virtual {v8, v13, v1, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "months-from-duration"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$MonthsFromDuration;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const/16 v14, 0x6000

    invoke-virtual {v8, v13, v12, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "name"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v21, 0x4000

    const/16 v22, 0x204

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "name"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Name_1;

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const v13, 0x1006000

    invoke-virtual {v8, v10, v6, v13, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "namespace-uri"

    const-class v23, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v26, 0x204

    move-object/from16 v20, p0

    move-object/from16 v24, v27

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "namespace-uri"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/NamespaceUri_1;

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const v13, 0x1006000

    invoke-virtual {v8, v10, v6, v13, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "namespace-uri-for-prefix"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/NamespaceForPrefix;

    const/16 v25, 0x6000

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v13, 0x6000

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v9, v13, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x1

    const v13, 0x1004000

    invoke-virtual {v8, v10, v2, v13, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "namespace-uri-from-QName"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/AccessorFn$NamespaceUriFromQName;

    const v26, 0x8000

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const/16 v14, 0x6000

    invoke-virtual {v8, v13, v4, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "nilled"

    const-class v23, Lnet/sf/saxon/functions/Nilled_1;

    const/16 v26, 0x0

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const v14, 0x1006000

    invoke-virtual {v8, v13, v6, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "node-name"

    const-class v19, Lnet/sf/saxon/functions/NodeName_1;

    const/16 v21, 0x6000

    const/16 v22, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v13, 0x0

    const v14, 0x1006000

    invoke-virtual {v8, v13, v6, v14, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "not"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/NotFn;

    const/16 v25, 0x4000

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const v13, 0x100e000

    invoke-virtual {v8, v10, v3, v13, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "normalize-space"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction$StringAccessor;

    const/16 v21, 0x4000

    const/16 v22, 0x204

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "normalize-space"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/NormalizeSpace_1;

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v13, 0x6000

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v9, v13, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "normalize-unicode"

    const-class v19, Lnet/sf/saxon/functions/NormalizeUnicode;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v13, 0x6000

    invoke-virtual {v8, v10, v9, v13, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "normalize-unicode"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/NormalizeUnicode;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v13, 0x6000

    invoke-virtual {v8, v10, v9, v13, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x4000

    invoke-virtual {v8, v10, v9, v14, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "number"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction$Number_0;

    sget-object v24, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v22, 0x204

    move-object/from16 v20, v24

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "number"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/Number_1;

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v8

    sget-object v10, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    move-object/from16 v33, v0

    move-object/from16 v14, v43

    const/16 v0, 0x6000

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v14, v0, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "one-or-more"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/TreatFn$OneOrMore;

    const v21, 0xc000

    const/16 v22, 0x101

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const v13, 0x400e000

    invoke-virtual {v0, v8, v3, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "position"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/PositionAndLast$Position;

    const/16 v21, 0x4000

    const/16 v22, 0xa00

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "prefix-from-QName"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/AccessorFn$PrefixFromQName;

    const/16 v25, 0x6000

    move-object/from16 v20, p0

    move-object/from16 v24, v32

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v8, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v10, 0x0

    const/16 v13, 0x6000

    invoke-virtual {v0, v10, v4, v13, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "QName"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/QNameFn;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x0

    const/16 v10, 0x6000

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v9, v10, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x1

    const/16 v10, 0x4000

    invoke-virtual {v0, v8, v9, v10, v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "remove"

    const-class v19, Lnet/sf/saxon/functions/Remove;

    const v21, 0xe000

    const/16 v22, 0x101

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v8, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v10, 0x0

    const v13, 0x400e000

    invoke-virtual {v0, v10, v3, v13, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v13, 0x4000

    invoke-virtual {v0, v8, v5, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "replace"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/RegexFunctionSansFlags;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v0, v8, v9, v10, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v13, 0x4000

    invoke-virtual {v0, v8, v9, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v9, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "replace"

    const/16 v18, 0x4

    const-class v19, Lnet/sf/saxon/functions/Replace;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v0, v8, v9, v10, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v13, 0x4000

    invoke-virtual {v0, v8, v9, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v9, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v9, v13, v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "resolve-QName"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/ResolveQName;

    const/16 v21, 0x6000

    const v22, 0x8000

    move-object/from16 v20, v4

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v8, 0x0

    const/16 v10, 0x6000

    invoke-virtual {v0, v8, v9, v10, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const v10, 0x1004000

    invoke-virtual {v0, v4, v2, v10, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "resolve-uri"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/ResolveURI;

    const v26, 0x8008

    move-object/from16 v20, p0

    move-object/from16 v24, v27

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v9, v4, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "resolve-uri"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/ResolveURI;

    const v26, 0x8000

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v9, v4, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v4, 0x4000

    invoke-virtual {v0, v2, v9, v4, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "reverse"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Reverse;

    const v21, 0xe000

    const/16 v22, 0x101

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v2, 0x800e000

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v3, v2, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "root"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v21, 0x4000

    const/16 v22, 0x204

    move-object/from16 v20, v6

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "root"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Root_1;

    const/16 v21, 0x6000

    const v22, 0x8000

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v2, 0x8006000

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6, v2, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "round"

    const-class v19, Lnet/sf/saxon/functions/Round;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v20

    const/16 v22, 0x2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v0, v6, v2, v8, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "round-half-to-even"

    const-class v19, Lnet/sf/saxon/functions/RoundHalfToEven;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v0, v6, v2, v8, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "round-half-to-even"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/RoundHalfToEven;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v0, v6, v2, v8, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x4000

    invoke-virtual {v0, v2, v5, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "seconds-from-dateTime"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$SecondsFromDateTime;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v22, 0x8000

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v2, v6, v1, v8, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "seconds-from-duration"

    const/16 v22, 0x1

    const-class v23, Lnet/sf/saxon/functions/AccessorFn$SecondsFromDuration;

    move-object/from16 v20, p0

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v2, v6, v12, v8, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "seconds-from-time"

    const-class v23, Lnet/sf/saxon/functions/AccessorFn$SecondsFromTime;

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    const/16 v6, 0x6000

    invoke-virtual {v0, v4, v15, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "starts-with"

    const/16 v22, 0x2

    const-class v23, Lnet/sf/saxon/functions/StartsWith;

    const/16 v25, 0x4000

    const/16 v26, 0x20

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "starts-with"

    const/16 v22, 0x3

    const-class v23, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v26, 0x8

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v4, 0x4000

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "static-base-uri"

    const/16 v22, 0x0

    const-class v23, Lnet/sf/saxon/functions/StaticBaseUri;

    const/16 v25, 0x6000

    const/16 v26, 0x208

    move-object/from16 v24, v27

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v21, 0x4000

    const/16 v22, 0x204

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/String_1;

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v2, 0x2006000

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v2, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string-length"

    const/16 v18, 0x0

    const-class v19, Lnet/sf/saxon/functions/ContextItemAccessorFunction$StringAccessor;

    const/16 v22, 0x204

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string-length"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/StringLength_1;

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string-join"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/StringJoin;

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const v4, 0xe000

    invoke-virtual {v0, v2, v14, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x4000

    invoke-virtual {v0, v2, v9, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "string-to-codepoints"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/StringToCodepoints;

    const v21, 0xe000

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    const/16 v6, 0x6000

    invoke-virtual {v0, v4, v9, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "subsequence"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Subsequence_2;

    const/16 v22, 0x101

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    const v6, 0x400e000

    invoke-virtual {v0, v4, v3, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x4000

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "subsequence"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/Subsequence_3;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    const v6, 0x400e000

    invoke-virtual {v0, v4, v3, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x4000

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Substring;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    invoke-virtual {v0, v2, v9, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x4000

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/Substring;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    invoke-virtual {v0, v2, v9, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x4000

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring-after"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/SubstringAfter;

    const/16 v22, 0x20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring-after"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v22, 0x8

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v4, 0x4000

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring-before"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/SubstringBefore;

    const/16 v22, 0x20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "substring-before"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v22, 0x8

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v4, 0x6000

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v9, v4, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v4, 0x4000

    invoke-virtual {v0, v2, v9, v4, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v0, "sum"

    const/4 v2, 0x1

    const-class v16, Lnet/sf/saxon/functions/Sum;

    const/16 v18, 0x4000

    const/16 v19, 0x400

    move-object/from16 v13, p0

    move-object v4, v14

    move-object v14, v0

    move-object v0, v15

    move v15, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0xe000

    invoke-virtual {v2, v6, v4, v10, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v14, "sum"

    const/4 v15, 0x2

    const-class v16, Lnet/sf/saxon/functions/Sum;

    const/16 v18, 0x6000

    invoke-virtual/range {v13 .. v19}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/4 v6, 0x0

    const v8, 0xe000

    const/4 v11, 0x0

    invoke-virtual {v2, v6, v4, v8, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    const/16 v6, 0x6000

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v4, v6, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "timezone-from-date"

    const/4 v2, 0x1

    const-class v8, Lnet/sf/saxon/functions/AccessorFn$TimezoneFromDate;

    const/16 v4, 0x6000

    const/4 v13, 0x0

    move-object v14, v5

    move-object/from16 v5, p0

    move-object v15, v7

    move v7, v2

    move-object v2, v9

    move-object/from16 v9, v31

    move v10, v4

    move-object v4, v11

    move v11, v13

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    move-object/from16 v13, v33

    const/4 v7, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v5, v7, v13, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "timezone-from-dateTime"

    const/4 v7, 0x1

    const-class v8, Lnet/sf/saxon/functions/AccessorFn$TimezoneFromDateTime;

    const/16 v10, 0x6000

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v7, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v5, v7, v1, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "timezone-from-time"

    const/4 v7, 0x1

    const-class v8, Lnet/sf/saxon/functions/AccessorFn$TimezoneFromTime;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v7, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v5, v7, v0, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "tokenize"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/RegexFunctionSansFlags;

    const v21, 0xe000

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v20, v2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v5, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const/16 v7, 0x6000

    invoke-virtual {v0, v6, v2, v7, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v5, 0x1

    const/16 v6, 0x4000

    invoke-virtual {v0, v5, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "tokenize"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/Tokenize_3;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v6, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v7, 0x0

    const/16 v8, 0x6000

    invoke-virtual {v0, v7, v2, v8, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v6, 0x4000

    invoke-virtual {v0, v5, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "trace"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/functions/Trace;

    const/16 v22, 0x201

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v6, 0x0

    const v7, 0x400e000

    invoke-virtual {v0, v6, v3, v7, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v6, 0x4000

    invoke-virtual {v0, v5, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "translate"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/functions/Translate;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v7, 0x6000

    invoke-virtual {v0, v6, v2, v7, v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v6, 0x4000

    invoke-virtual {v0, v5, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v6, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v21, "true"

    const-class v23, Lnet/sf/saxon/functions/ConstantFunction$True;

    const/16 v25, 0x4000

    const/16 v26, 0x0

    move-object/from16 v20, p0

    move-object/from16 v24, v28

    invoke-virtual/range {v20 .. v26}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "unordered"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/functions/Unordered;

    const v21, 0xe000

    const/16 v22, 0x501

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v5, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    const v7, 0x400e000

    invoke-virtual {v0, v6, v3, v7, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "upper-case"

    const-class v19, Lnet/sf/saxon/functions/UpperCase;

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x6000

    invoke-virtual {v0, v5, v2, v6, v15}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "year-from-date"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$YearFromDate;

    const/16 v21, 0x6000

    const v22, 0x8000

    move-object/from16 v20, v14

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const/16 v6, 0x6000

    invoke-virtual {v0, v5, v13, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "year-from-dateTime"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$YearFromDateTime;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v5, 0x0

    const/16 v6, 0x6000

    invoke-virtual {v0, v5, v1, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "years-from-duration"

    const-class v19, Lnet/sf/saxon/functions/AccessorFn$YearsFromDuration;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    const/16 v5, 0x6000

    invoke-virtual {v0, v2, v12, v5, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "zero-or-one"

    const-class v19, Lnet/sf/saxon/functions/TreatFn$ZeroOrOne;

    const/16 v22, 0x101

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x400e000

    invoke-virtual {v0, v1, v3, v2, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
