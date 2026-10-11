.class public Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;->c:Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;->c:Lnet/sf/saxon/functions/registry/XSLT30FunctionSet;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 18

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath40FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath40FunctionSet;

    move-result-object v0

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V

    const-string v2, "accumulator-after"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/AccumulatorFn$AccumulatorAfter;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0xe000

    const/16 v7, 0x204

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v10, 0x0

    const/16 v11, 0x4000

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "accumulator-before"

    const-class v4, Lnet/sf/saxon/functions/AccumulatorFn$AccumulatorBefore;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "available-system-properties"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/AvailableSystemProperties;

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v7, 0x200

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current"

    const-class v4, Lnet/sf/saxon/functions/Current;

    sget-object v0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    const/16 v6, 0x4000

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-group"

    const-class v4, Lnet/sf/saxon/functions/CurrentGroup;

    const v6, 0xe000

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-grouping-key"

    const-class v4, Lnet/sf/saxon/functions/CurrentGroupingKey;

    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object v5, v13

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-merge-group"

    const-class v4, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-merge-group"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-merge-key"

    const/4 v3, 0x0

    const-class v4, Lnet/sf/saxon/functions/CurrentMergeKey;

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "current-output-uri"

    const-class v4, Lnet/sf/saxon/functions/CurrentOutputUri;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v6, 0x6000

    move-object v5, v14

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "document"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/DocumentFn;

    sget-object v15, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    const v6, 0xe000

    const/16 v7, 0x608

    move-object v5, v15

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const v7, 0xe000

    invoke-virtual {v1, v10, v0, v7, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "document"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/DocumentFn;

    const/16 v16, 0x608

    move-object/from16 v1, p0

    move v11, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    invoke-virtual {v1, v10, v0, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v7, 0x1

    const/16 v1, 0x4000

    invoke-virtual {v0, v7, v15, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "element-available"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/ElementAvailable;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v6, 0x4000

    const/16 v16, 0x10

    move-object/from16 v1, p0

    move-object v5, v0

    move v11, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "function-available"

    const-class v4, Lnet/sf/saxon/functions/FunctionAvailable;

    const/16 v7, 0x210

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "function-available"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/FunctionAvailable;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v11, v7, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "key"

    const-class v4, Lnet/sf/saxon/functions/KeyFn;

    const v6, 0xe000

    const/16 v16, 0x4210

    move-object/from16 v1, p0

    move-object v5, v15

    move-object/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v3, 0xe000

    invoke-virtual {v1, v11, v13, v3, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "key"

    const/4 v3, 0x3

    const-class v4, Lnet/sf/saxon/functions/KeyFn;

    const/16 v7, 0x210

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v4, 0xe000

    invoke-virtual {v1, v11, v13, v4, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v15, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "regex-group"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/RegexGroup;

    const/16 v6, 0x4000

    const/16 v7, 0x2200

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    move-object/from16 v2, v17

    const/16 v3, 0x4000

    invoke-virtual {v1, v10, v2, v3, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "stream-available"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/StreamAvailable;

    const/16 v7, 0x200

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "system-property"

    const-class v4, Lnet/sf/saxon/functions/SystemProperty;

    const/16 v7, 0x210

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v10, v9, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "type-available"

    const-class v4, Lnet/sf/saxon/functions/TypeAvailable;

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-entity-public-id"

    const-class v4, Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityPublicId;

    const/16 v7, 0x4200

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-entity-public-id"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityPublicId;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v11, v15, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-entity-uri"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityUri;

    const/16 v7, 0x4200

    move-object/from16 v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "unparsed-entity-uri"

    const/4 v3, 0x2

    const-class v4, Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityUri;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v10, v9, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v11, v15, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
