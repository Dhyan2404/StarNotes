.class public Lnet/sf/saxon/functions/registry/XPath30FunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/XPath30FunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath30FunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/XPath30FunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath30FunctionSet;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 26

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    move-result-object v0

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V

    const-string v2, "analyze-string"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/RegexFunctionSansFlags;

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v6, 0x4000

    const v7, 0x10200

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v10, 0x0

    const/16 v11, 0x6000

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v13, 0x1

    const/16 v14, 0x4000

    invoke-virtual {v1, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "analyze-string"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/AnalyzeStringFn;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "apply"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/ApplyFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0xe000

    const/16 v7, 0x200

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {v1, v13, v2, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "available-environment-variables"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/AvailableEnvironmentVariables;

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "data"

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v16, 0x204

    move-object v5, v7

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "document-uri"

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    sget-object v16, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v6, 0x6000

    const/16 v7, 0x204

    move-object/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "element-with-id"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/SuperId$ElementWithId;

    const v6, 0xe000

    const/16 v7, 0x604

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v7, 0xe000

    invoke-virtual {v1, v10, v9, v7, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "element-with-id"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/SuperId$ElementWithId;

    const/16 v18, 0x400

    move-object/from16 v1, p0

    move v0, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v10, v9, v0, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v7, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v1, v13, v7, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "environment-variable"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/EnvironmentVariable;

    const/16 v6, 0x6000

    const/16 v18, 0x200

    move-object/from16 v1, p0

    move-object v5, v9

    move-object/from16 v19, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v10, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v7, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v6}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v7, v1, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "filter"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/hof/FilterFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v18, 0xe000

    const/16 v20, 0x201

    move-object/from16 v1, p0

    move-object v11, v6

    move/from16 v6, v18

    move-object v15, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v7, 0x400e000

    invoke-virtual {v1, v10, v2, v7, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v15, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v6, v11}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v15, v1, v6}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "fold-left"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/hof/FoldLeftFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v20, 0xe000

    const/16 v21, 0x200

    move-object/from16 v1, p0

    move-object/from16 v22, v6

    move/from16 v6, v20

    move/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v0, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-virtual {v1, v13, v2, v0, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v15, Lnet/sf/saxon/type/SpecificFunctionType;

    move-object/from16 v7, v22

    filled-new-array {v11, v7}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v15, v1, v7}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "fold-right"

    const-class v4, Lnet/sf/saxon/functions/hof/FoldRightFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0xe000

    const/16 v20, 0x200

    move-object/from16 v1, p0

    move-object/from16 v23, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v0, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-virtual {v1, v13, v2, v0, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v15, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v11}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    move-object/from16 v7, v23

    invoke-direct {v15, v1, v7}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "for-each"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/hof/ForEachFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v24, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v10, v2, v0, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v15, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v11, v11}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-direct {v15, v1, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "for-each-pair"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/hof/ForEachPairFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const/16 v7, 0x200

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v10, v2, v0, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v1, v13, v2, v0, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-date"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    const/16 v6, 0x6000

    const v7, 0x8000

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v11, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-date"

    const/4 v3, 0x5

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v11, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v15, 0x4

    invoke-virtual {v1, v15, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-dateTime"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v7, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-dateTime"

    const/4 v3, 0x5

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    const v20, 0x8000

    move-object/from16 v1, p0

    move-object v0, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v0, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v11, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v15, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-integer"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FormatInteger;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const/16 v6, 0x4000

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v7, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-integer"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/FormatInteger;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v15, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v15, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-number"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FormatNumber;

    const/16 v7, 0x200

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v0, v10, v1, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-number"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/FormatNumber;

    const/16 v7, 0x210

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v0, v10, v1, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-time"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    const/16 v6, 0x6000

    const v7, 0x8000

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v7, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "format-time"

    const/4 v3, 0x5

    const-class v4, Lnet/sf/saxon/functions/FormatDate;

    const v0, 0x8000

    move-object/from16 v1, p0

    move-object v11, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v11, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "function-arity"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/hof/FunctionArity;

    const/16 v6, 0x4000

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v15

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "function-lookup"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/hof/FunctionLookup;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v5

    const/16 v6, 0x6000

    const/16 v7, 0x5a3c

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v10, v11, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v13, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "function-name"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/hof/FunctionName;

    const/4 v7, 0x0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "generate-id"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v6, 0x4000

    const/16 v7, 0x204

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "generate-id"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/GenerateId_1;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v7, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    const v6, 0x1006000

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1, v6, v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "has-children"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v18, 0x4000

    const/16 v19, 0x204

    move-object/from16 v1, p0

    move-object v5, v0

    move v13, v6

    move/from16 v6, v18

    move-object/from16 v25, v7

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "has-children"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/HasChildren_1;

    const/16 v6, 0x6000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v13, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "head"

    const-class v4, Lnet/sf/saxon/functions/HeadFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const/16 v7, 0x100

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    const v13, 0x400e000

    invoke-virtual {v1, v10, v2, v13, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "innermost"

    const-class v4, Lnet/sf/saxon/functions/Innermost;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v5

    const v6, 0xe000

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    const v3, 0x800e000

    invoke-virtual {v1, v10, v2, v3, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "nilled"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v6, 0x6000

    const/16 v7, 0x204

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "node-name"

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "outermost"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/Outermost;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v5

    const v6, 0xe000

    const/16 v7, 0x101

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v13, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "parse-xml"

    const-class v4, Lnet/sf/saxon/functions/ParseXml;

    sget-object v11, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v6, 0x6000

    const v7, 0x10200

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v3, 0x6000

    invoke-virtual {v1, v10, v9, v3, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "parse-xml-fragment"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/ParseXmlFragment;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v3, 0x6000

    invoke-virtual {v1, v10, v9, v3, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "path"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v7, 0x204

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "path"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/Path_1;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    const v3, 0x8006000

    invoke-virtual {v1, v10, v2, v3, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "round"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/Round;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v5

    const/4 v7, 0x2

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v4, 0x6000

    invoke-virtual {v1, v10, v2, v4, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v15, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "serialize"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/Serialize;

    const/16 v6, 0x4000

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    const v3, 0xe000

    invoke-virtual {v1, v10, v2, v3, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "sort"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/Sort_1;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0xe000

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    const v3, 0xe000

    invoke-virtual {v1, v10, v2, v3, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "string-join"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/StringJoin;

    const/16 v6, 0x4000

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    const v4, 0xe000

    invoke-virtual {v1, v10, v2, v4, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "tail"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/TailFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0xe000

    const/16 v7, 0x101

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v13, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text"

    const-class v4, Lnet/sf/saxon/functions/UnparsedText;

    const/16 v6, 0x6000

    const/16 v7, 0x208

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/UnparsedText;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text-available"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/UnparsedTextAvailable;

    const/16 v6, 0x4000

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v11, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v9, v2, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text-available"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/UnparsedTextAvailable;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v9, v1, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text-lines"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/UnparsedTextLines;

    const v6, 0xe000

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-text-lines"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/UnparsedTextLines;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "uri-collection"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/UriCollection;

    const/16 v7, 0x200

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "uri-collection"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/UriCollection;

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
