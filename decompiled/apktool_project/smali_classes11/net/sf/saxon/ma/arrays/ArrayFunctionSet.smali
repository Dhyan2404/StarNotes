.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayToSequence;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayTail;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySubarray;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySize;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayReverse;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayPut;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayOf;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayMembers;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayJoin;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayInsertBefore;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayHead;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayGet;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayForEachPair;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayForEach;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFoldRight;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFoldLeft;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFilter;,
        Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayAppend;
    }
.end annotation


# static fields
.field public static THE_INSTANCE:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->THE_INSTANCE:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->init()V

    return-void
.end method

.method public static checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->asSubscript()I

    move-result v0

    const-string v1, "FOAY0001"

    const-string v2, "Array subscript "

    if-lez v0, :cond_1

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " exceeds limit ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is out of range"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->THE_INSTANCE:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    return-object v0
.end method


# virtual methods
.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "array"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/array"

    return-object p0
.end method

.method public final init()V
    .locals 23

    const-string v1, "append"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayAppend;

    sget-object v11, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1004000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/4 v12, 0x1

    const v13, 0x800e000

    invoke-virtual {v0, v12, v4, v13, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v14, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v14}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v4, v5}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v5, "filter"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFilter;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v0, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v16, "flatten"

    const/16 v17, 0x1

    const-class v18, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v19

    const v20, 0xe000

    const/16 v21, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v21}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const v15, 0x200e000

    invoke-virtual {v0, v1, v4, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v14, v14}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-direct {v0, v4, v14}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v17, "fold-left"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFoldLeft;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    const v21, 0xe000

    const/16 v22, 0x0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual {v4, v12, v5, v13, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const/4 v10, 0x2

    invoke-virtual {v4, v10, v0, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "fold-right"

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFoldRight;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    invoke-virtual {v4, v12, v5, v13, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v10, v0, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v4, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v14}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-direct {v4, v5, v14}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v17, "for-each"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayForEach;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v5

    invoke-virtual {v5, v12, v4, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "for-each-pair"

    const/16 v18, 0x3

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayForEachPair;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v10, v0, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "get"

    const/16 v18, 0x2

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayGet;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v8, 0x2004000

    invoke-virtual {v0, v12, v9, v8, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "head"

    const/16 v18, 0x1

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayHead;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v20

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "insert-before"

    const/4 v6, 0x3

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayInsertBefore;

    const/16 v0, 0x4000

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-object v8, v11

    move-object v13, v9

    move v9, v0

    move v0, v10

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v13, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0x800e000

    invoke-virtual {v4, v0, v5, v6, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "join"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayJoin;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const v10, 0x100e000

    invoke-virtual {v4, v1, v11, v10, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "put"

    const/4 v6, 0x3

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayPut;

    move-object/from16 v4, p0

    move v15, v10

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v13, v15, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v5

    const v6, 0x800e000

    invoke-virtual {v4, v0, v5, v6, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "remove"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    const v5, 0x200e000

    invoke-virtual {v4, v12, v13, v5, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "reverse"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayReverse;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v17, "size"

    const-class v19, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySize;

    const/16 v21, 0x4000

    move-object/from16 v16, p0

    move-object/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    new-instance v10, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v14}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v10, v4, v5}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    const-string v5, "sort"

    const-class v7, Lnet/sf/saxon/ma/arrays/ArraySort;

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object v15, v10

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "sort"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/arrays/ArraySort;

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v10, 0x2006000

    invoke-virtual {v4, v12, v14, v10, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "sort"

    const/4 v6, 0x3

    const-class v7, Lnet/sf/saxon/ma/arrays/ArraySort;

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move v0, v10

    move/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    invoke-virtual {v4, v12, v14, v0, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v15, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "subarray"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySubarray;

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const v14, 0x2004000

    invoke-virtual {v0, v12, v13, v14, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "subarray"

    const/4 v6, 0x3

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArraySubarray;

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v12, v13, v14, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v13, v14, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "tail"

    const/4 v6, 0x1

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayTail;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "_to-sequence"

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayToSequence;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v8

    const v9, 0xe000

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "_from-sequence"

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFromSequence;

    const/16 v9, 0x4000

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    const v4, 0x100e000

    invoke-virtual {v0, v1, v2, v4, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "of"

    const-class v7, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayOf;

    const/high16 v10, 0x40000

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/ma/Parcel;->TYPE:Lnet/sf/saxon/ma/map/RecordTest;

    const v4, 0xe000

    invoke-virtual {v0, v1, v2, v4, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v13, "members"

    const/4 v14, 0x1

    const-class v15, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayMembers;

    sget-object v16, Lnet/sf/saxon/ma/Parcel;->TYPE:Lnet/sf/saxon/ma/map/RecordTest;

    const v17, 0xe000

    const/high16 v18, 0x40000

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v18}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v11, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
