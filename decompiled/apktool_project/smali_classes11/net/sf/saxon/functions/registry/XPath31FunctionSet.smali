.class public Lnet/sf/saxon/functions/registry/XPath31FunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/XPath31FunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->c:Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    return-object v0
.end method


# virtual methods
.method public final init()V
    .locals 23

    move-object/from16 v7, p0

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath30FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath30FunctionSet;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V

    const-string v1, "collation-key"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/CollationKeyFn;

    sget-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x6000

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v10, 0x0

    const/16 v11, 0x4000

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "collation-key"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/CollatingFunctionFree;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "contains-token"

    const-class v3, Lnet/sf/saxon/functions/ContainsToken;

    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x4000

    move-object/from16 v0, p0

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v14, 0xe000

    invoke-virtual {v0, v10, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "contains-token"

    const/4 v2, 0x3

    const-class v3, Lnet/sf/saxon/functions/CollatingFunctionFree;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "copy-of"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/CopyOfFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v5, 0xe000

    const/high16 v6, 0x10000

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "copy-of"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/CopyOfFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v6, 0x200e000

    invoke-virtual {v0, v10, v1, v6, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "default-language"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/DynamicContextAccessor$DefaultLanguage;

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->LANGUAGE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x4000

    const/16 v16, 0x40

    move-object/from16 v0, p0

    move v15, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "generate-id"

    const-class v3, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v6, 0x204

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "generate-id"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/GenerateId_1;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    sget-object v6, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    const v5, 0x1006000

    invoke-virtual {v0, v10, v1, v5, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "has-children"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    const/16 v16, 0x4000

    const/16 v18, 0x204

    move-object/from16 v0, p0

    move-object v4, v13

    move v15, v5

    move/from16 v5, v16

    move-object/from16 v19, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "has-children"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/HasChildren_1;

    const/16 v5, 0x6000

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "head"

    const-class v3, Lnet/sf/saxon/functions/HeadFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/16 v6, 0x100

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    const v13, 0x400e000

    invoke-virtual {v0, v10, v1, v13, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "innermost"

    const-class v3, Lnet/sf/saxon/functions/Innermost;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v4

    const v5, 0xe000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    const v2, 0x800e000

    invoke-virtual {v0, v10, v1, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "json-doc"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/ma/json/JsonDoc;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/16 v5, 0x6000

    const/16 v6, 0x200

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v15, 0x6000

    invoke-virtual {v0, v10, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "json-doc"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/ma/json/JsonDoc;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v6, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v0, v8, v6, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/ma/json/ParseJsonFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "json-to-xml"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/ma/json/JsonToXMLFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v16, 0x10200

    move-object/from16 v0, p0

    move-object v13, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "json-to-xml"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/ma/json/JsonToXMLFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v6, 0x10200

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v13, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/ma/json/JsonToXMLFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "load-xquery-module"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/hof/LoadXqueryModule;

    const/16 v5, 0x4000

    const/16 v6, 0x200

    move-object/from16 v0, p0

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "load-xquery-module"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/hof/LoadXqueryModule;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v8, v13, v11, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/functions/hof/LoadXqueryModule;->makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "parse-ietf-date"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/ParseIetfDate;

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x6000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v9, v15, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "parse-json"

    const-class v3, Lnet/sf/saxon/ma/json/ParseJsonFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v9, v15, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "parse-json"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/ma/json/ParseJsonFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v9, v15, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v13, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/ma/json/ParseJsonFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "parse-xml"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/ParseXml;

    sget-object v16, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const v6, 0x10200

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v9, v15, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "random-number-generator"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;

    sget-object v20, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;->RETURN_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v5, 0x4000

    const/16 v6, 0x200

    move-object/from16 v0, p0

    move-object/from16 v4, v20

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "random-number-generator"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/hof/RandomNumberGenerator;

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v10, v6, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "parse-xml-fragment"

    const-class v3, Lnet/sf/saxon/functions/ParseXmlFragment;

    const/16 v5, 0x6000

    const v20, 0x10200

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v21, v6

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v9, v15, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "serialize"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/Serialize;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v6, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v8, v6, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/functions/Serialize;->makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "snapshot"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/ContextItemAccessorFunction;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v5, 0xe000

    const v16, 0x10204

    move-object/from16 v0, p0

    move-object/from16 v20, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "snapshot"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/SnapshotFn;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v4

    const/high16 v6, 0x10000

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v3, 0x200e000

    invoke-virtual {v0, v10, v1, v3, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "sort"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/Sort_1;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "sort"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/Sort_2;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v6, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v6, v0, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v1, "sort"

    const/4 v2, 0x3

    const-class v3, Lnet/sf/saxon/functions/hof/Sort_3;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v22, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v14, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v15, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    move-object/from16 v1, v22

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "string-join"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/StringJoin;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    move-object/from16 v6, v19

    move-object/from16 v5, v21

    invoke-virtual {v0, v10, v5, v14, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "string-join"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/StringJoin;

    const/16 v16, 0x4000

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v15, v5

    move/from16 v5, v16

    move-object v8, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v10, v15, v14, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "tokenize"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/Tokenize_1;

    const v5, 0xe000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/16 v2, 0x6000

    invoke-virtual {v0, v10, v9, v2, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "trace"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/Trace;

    const/16 v6, 0x201

    move-object/from16 v0, p0

    move-object/from16 v4, v20

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    move-object/from16 v1, v20

    const v2, 0x400e000

    invoke-virtual {v0, v10, v1, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "transform"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/TransformFn;

    const/16 v5, 0x4000

    const/16 v6, 0x200

    move-object/from16 v0, p0

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v13, v11, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/functions/TransformFn;->makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "xml-to-json"

    const-class v3, Lnet/sf/saxon/ma/json/XMLToJsonFn;

    const/16 v5, 0x6000

    move-object/from16 v0, p0

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const v8, 0x2006000

    invoke-virtual {v0, v10, v1, v8, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "xml-to-json"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/ma/json/XMLToJsonFn;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v10, v1, v8, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v1, 0x2004000

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v13, v1, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/ma/json/XMLToJsonFn;->makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
