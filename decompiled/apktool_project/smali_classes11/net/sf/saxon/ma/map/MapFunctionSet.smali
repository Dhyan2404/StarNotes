.class public Lnet/sf/saxon/ma/map/MapFunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapSize;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapRemove;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapPut;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapKeys;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapIndex;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntries;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapForEach;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntry;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapGet;,
        Lnet/sf/saxon/ma/map/MapFunctionSet$MapContains;
    }
.end annotation


# static fields
.field public static THE_INSTANCE:Lnet/sf/saxon/ma/map/MapFunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/map/MapFunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/MapFunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/ma/map/MapFunctionSet;->THE_INSTANCE:Lnet/sf/saxon/ma/map/MapFunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapFunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/ma/map/MapFunctionSet;->THE_INSTANCE:Lnet/sf/saxon/ma/map/MapFunctionSet;

    return-object v0
.end method


# virtual methods
.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "map"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/map"

    return-object p0
.end method

.method public final init()V
    .locals 25

    const-string v1, "merge"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;

    sget-object v11, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x100e000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v12, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v12, v12}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-direct {v0, v4, v12}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const/16 v13, 0x4000

    invoke-static {v0, v13}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    new-instance v14, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v14}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const-string v5, "use-first"

    invoke-static {v5}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v5

    const-string v6, "duplicates"

    invoke-virtual {v14, v6, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v15, "use-first"

    const-string v16, "use-last"

    const-string v17, "combine"

    const-string v18, "reject"

    const-string v19, "unspecified"

    const-string v20, "use-any"

    const-string v21, "use-callback"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "FOJS0005"

    invoke-virtual {v14, v6, v7, v5}, Lnet/sf/saxon/functions/OptionsParameter;->setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "FOJS0003"

    invoke-static {v5}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v5

    const-string v6, "Q{http://saxon.sf.net/}duplicates-error-code"

    invoke-virtual {v14, v6, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v5, "anyAtomicType"

    invoke-static {v5}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v5

    const-string v6, "Q{http://saxon.sf.net/}key-type"

    invoke-virtual {v14, v6, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    sget-object v5, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const-string v6, "Q{http://saxon.sf.net/}final"

    invoke-virtual {v14, v6, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v4, "Q{http://saxon.sf.net/}on-duplicates"

    invoke-virtual {v14, v4, v0, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v5, "merge"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v15, 0xe000

    invoke-virtual {v0, v1, v11, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v11, v13, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v14}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "entry"

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntry;

    const/4 v0, 0x0

    move v14, v10

    move v10, v0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v9, 0x2004000

    invoke-virtual {v0, v1, v10, v9, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v8, 0x800e000

    invoke-virtual {v0, v14, v4, v8, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "find"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v20

    const/16 v21, 0x4000

    const/16 v22, 0x0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v14, v10, v9, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "get"

    const-class v19, Lnet/sf/saxon/ma/map/MapFunctionSet$MapGet;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    const v21, 0xe000

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v2, 0x1004000

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v14, v10, v9, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v4}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v4, v7}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v5, "index"

    const-class v16, Lnet/sf/saxon/ma/map/MapFunctionSet$MapIndex;

    const/16 v17, 0x4000

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    move-object v8, v11

    move/from16 v9, v17

    move-object/from16 v24, v10

    move/from16 v10, v18

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v14, v0, v13, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "put"

    const/4 v6, 0x3

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapPut;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    move-object/from16 v13, v24

    const v15, 0x2004000

    invoke-virtual {v0, v14, v13, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0x800e000

    invoke-virtual {v0, v4, v5, v6, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "contains"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/ma/map/MapFunctionSet$MapContains;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v21, 0x4000

    move-object/from16 v16, p0

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v14, v13, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "remove"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapRemove;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const v5, 0x200e000

    invoke-virtual {v4, v14, v13, v5, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "keys"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapKeys;

    const v9, 0xe000

    move-object/from16 v4, p0

    move-object v8, v13

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "size"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/ma/map/MapFunctionSet$MapSize;

    sget-object v20, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v4, Lnet/sf/saxon/type/SpecificFunctionType;

    move-object/from16 v5, v23

    filled-new-array {v5, v12}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-direct {v4, v5, v12}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v17, "for-each"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/ma/map/MapFunctionSet$MapForEach;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    const v21, 0xe000

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v14, v4, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "entries"

    const-class v7, Lnet/sf/saxon/ma/map/MapFunctionSet$MapEntries;

    move-object/from16 v4, p0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "untyped-contains"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/map/MapUntypedContains;

    const/16 v9, 0x4000

    move-object/from16 v4, p0

    move-object v8, v0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v14, v13, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
