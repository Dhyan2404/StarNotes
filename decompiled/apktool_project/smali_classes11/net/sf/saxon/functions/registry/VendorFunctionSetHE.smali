.class public Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$YesNoBoolean;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$MapAsSequenceOfMaps;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$ArrayAsSequenceOfMaps;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$DynamicErrorInfoFn;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasUniformNamespaces;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasLocalNamespaces;,
        Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$IsWholeNumberFn;
    }
.end annotation


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

.field public static d:Lnet/sf/saxon/value/StringValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->c:Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    new-instance v1, Lnet/sf/saxon/str/Twine8;

    const-string v2, "value"

    invoke-static {v2}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    sput-object v0, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->d:Lnet/sf/saxon/value/StringValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->init()V

    return-void
.end method

.method public static synthetic c()Lnet/sf/saxon/value/StringValue;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->d:Lnet/sf/saxon/value/StringValue;

    return-object v0
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->c:Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    return-object v0
.end method


# virtual methods
.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "saxon"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://saxon.sf.net/"

    return-object p0
.end method

.method public final init()V
    .locals 22

    const-string v1, "is-whole-number"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$IsWholeNumberFn;

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    const/16 v2, 0x6000

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "dynamic-error-info"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$DynamicErrorInfoFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v8

    const v9, 0xe000

    const/16 v10, 0x7a04

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v2, 0x4000

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "apply"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/functions/ApplyFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v8

    const/16 v10, 0x200

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v4

    invoke-virtual {v0, v12, v4, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v4, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v15, "create-map"

    const/16 v16, 0x1

    const-class v17, Lnet/sf/saxon/ma/map/MapCreate;

    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v19, 0x4000

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v20}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const v14, 0xe000

    invoke-virtual {v4, v12, v0, v14, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v16, "doc"

    const/16 v17, 0x2

    const-class v18, Lnet/sf/saxon/functions/Doc_2;

    sget-object v19, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v20, 0x4000

    const/16 v21, 0x200

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v21}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v4, v13, v0, v2, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/functions/Doc_2;->makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "has-local-namespaces"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasLocalNamespaces;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v15, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v4, v12, v15, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "has-uniform-namespaces"

    const-class v7, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasUniformNamespaces;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v15, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "map-untyped-contains"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/map/MapUntypedContains;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v0, v14, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v4, v13, v5, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v4, Lnet/sf/saxon/ma/map/RecordTest;

    const-string v5, "key"

    const-string v6, "value"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v6, v7}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v12}, Lnet/sf/saxon/ma/map/RecordTest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Z)V

    const-string v15, "map-as-sequence-of-maps"

    const/16 v16, 0x1

    const-class v17, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$MapAsSequenceOfMaps;

    const v19, 0xe000

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v18, v4

    invoke-virtual/range {v14 .. v20}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v0, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "yes-no-boolean"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$YesNoBoolean;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v12, v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
