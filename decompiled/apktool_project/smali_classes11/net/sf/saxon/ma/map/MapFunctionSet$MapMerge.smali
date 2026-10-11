.class public Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/map/MapFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapMerge"
.end annotation


# static fields
.field public static final errorCodeKey:Ljava/lang/String; = "Q{http://saxon.sf.net/}duplicates-error-code"

.field public static final finalKey:Ljava/lang/String; = "Q{http://saxon.sf.net/}final"

.field public static final keyTypeKey:Ljava/lang/String; = "Q{http://saxon.sf.net/}key-type"

.field public static final synthetic m:Z = false

.field public static final onDuplicatesKey:Ljava/lang/String; = "Q{http://saxon.sf.net/}on-duplicates"


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lnet/sf/saxon/om/Function;

.field public k:Z

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const-string v0, "use-first"

    iput-object v0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->h:Ljava/lang/String;

    const-string v0, "FOJS0003"

    iput-object v0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->j:Lnet/sf/saxon/om/Function;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->k:Z

    iput-boolean v0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "combine-reverse"

    const-string v1, "combine"

    const-string v2, "use-last"

    const-string v3, "use-first"

    const/4 v4, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string p0, "use-any"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string p0, "unspecified"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    return-object p1

    :pswitch_0
    return-object v1

    :pswitch_1
    return-object v0

    :pswitch_2
    return-object v3

    :pswitch_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6123d516 -> :sswitch_5
        -0x60ed74c9 -> :sswitch_4
        -0x13a3b4e4 -> :sswitch_3
        -0x8e4675a -> :sswitch_2
        0x38a0fd3f -> :sswitch_1
        0x3b4e8454 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->h:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->i:Ljava/lang/String;

    .line 4
    iget-boolean v5, v0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->k:Z

    .line 5
    iget-boolean v6, v0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->l:Z

    .line 6
    iget-object v7, v0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->j:Lnet/sf/saxon/om/Function;

    .line 7
    array-length v8, v2

    const-string v9, "use-callback"

    const/4 v10, 0x1

    if-le v8, v10, :cond_1

    .line 8
    aget-object v3, v2, v10

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/ma/map/MapItem;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v4

    iget-object v4, v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v4, v3, v1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "duplicates"

    .line 10
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Q{http://saxon.sf.net/}duplicates-error-code"

    .line 11
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Q{http://saxon.sf.net/}final"

    .line 12
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v6}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v6

    const-string v7, "Q{http://saxon.sf.net/}key-type"

    .line 13
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v7}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Q{http://saxon.sf.net/}on-duplicates"

    .line 14
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Function;

    if-eqz v3, :cond_0

    move-object v4, v5

    move v5, v7

    move-object v7, v3

    move-object v3, v9

    goto :goto_0

    :cond_0
    move/from16 v24, v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, v24

    :cond_1
    :goto_0
    const-string v8, "Duplicate key in constructed map: "

    const-string v11, "combine"

    const-string v12, "use-first"

    const-string v13, "use-any"

    const-string v14, "use-last"

    const-string v15, "unspecified"

    const/16 v16, -0x1

    const/16 v18, 0x0

    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    .line 15
    aget-object v0, v2, v18

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    .line 16
    new-instance v2, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {v2}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move/from16 v5, v16

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v5, v18

    :goto_2
    const-string v6, ")"

    const-string v13, "The keys in this map must all be strings (found "

    packed-switch v5, :pswitch_data_0

    .line 18
    :cond_5
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v5, :cond_b

    .line 19
    invoke-virtual {v5}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/saxon/ma/map/KeyValuePair;

    .line 20
    iget-object v15, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    instance-of v10, v15, Lnet/sf/saxon/value/StringValue;

    if-eqz v10, :cond_a

    .line 21
    invoke-virtual {v2, v15}, Lnet/sf/saxon/ma/map/DictionaryMap;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_4
    move/from16 v15, v16

    goto :goto_5

    :sswitch_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_4

    :cond_6
    const/4 v15, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v15, v18

    :goto_5
    packed-switch v15, :pswitch_data_1

    .line 23
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    .line 24
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 25
    :pswitch_0
    new-instance v15, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;

    move-object/from16 p0, v5

    iget-object v5, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    .line 26
    invoke-interface {v5}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    invoke-interface {v10}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v10

    move-object/from16 v19, v4

    const/4 v4, 0x1

    invoke-direct {v15, v5, v10, v4}, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;I)V

    .line 27
    invoke-static {v15}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    .line 28
    iget-object v10, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v5}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_6

    :pswitch_1
    move-object/from16 v19, v4

    move-object/from16 p0, v5

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v15, v5, [Lnet/sf/saxon/om/Sequence;

    aput-object v10, v15, v18

    .line 29
    iget-object v5, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    aput-object v5, v15, v4

    .line 30
    invoke-interface {v7, v1, v15}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    .line 31
    iget-object v5, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v19, v4

    move-object/from16 p0, v5

    goto :goto_6

    :cond_9
    move-object/from16 v19, v4

    move-object/from16 p0, v5

    .line 32
    iget-object v4, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v2, v4, v5}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :goto_6
    move-object/from16 v5, p0

    move-object/from16 v4, v19

    goto/16 :goto_3

    .line 33
    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-object v2

    .line 34
    :cond_c
    :pswitch_3
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual {v1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/ma/map/KeyValuePair;

    .line 36
    iget-object v4, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    instance-of v5, v4, Lnet/sf/saxon/value/StringValue;

    if-eqz v5, :cond_d

    .line 37
    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v2, v4, v3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_7

    .line 38
    :cond_d
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-object v2

    :cond_f
    move-object/from16 v19, v4

    .line 39
    aget-object v2, v2, v18

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/ma/map/MapItem;

    if-nez v4, :cond_10

    .line 41
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    return-object v0

    .line 42
    :cond_10
    :goto_8
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v5, :cond_21

    .line 43
    invoke-virtual {v5}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result v6

    invoke-virtual {v4}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result v10

    if-le v6, v10, :cond_11

    const/4 v6, 0x1

    goto :goto_9

    :cond_11
    move/from16 v6, v18

    :goto_9
    if-eqz v6, :cond_12

    move-object v10, v5

    goto :goto_a

    :cond_12
    move-object v10, v4

    :goto_a
    if-eqz v6, :cond_13

    goto :goto_b

    :cond_13
    move-object v4, v5

    :goto_b
    if-eqz v6, :cond_14

    .line 44
    invoke-virtual {v0, v3}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_14
    move-object v5, v3

    .line 45
    :goto_c
    invoke-virtual {v4}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    move-object/from16 p2, v2

    .line 46
    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v10, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v21, v3

    sparse-switch v20, :sswitch_data_2

    :goto_e
    move/from16 v3, v16

    goto :goto_f

    :sswitch_6
    const-string v3, "combine-reverse"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_e

    :cond_15
    const/4 v3, 0x6

    goto :goto_f

    :sswitch_7
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_e

    :cond_16
    const/4 v3, 0x5

    goto :goto_f

    :sswitch_8
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_e

    :cond_17
    const/4 v3, 0x4

    goto :goto_f

    :sswitch_9
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_e

    :cond_18
    const/4 v3, 0x3

    goto :goto_f

    :sswitch_a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_e

    :cond_19
    const/4 v3, 0x2

    goto :goto_f

    :sswitch_b
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v3, 0x1

    goto :goto_f

    :sswitch_c
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_e

    :cond_1b
    move/from16 v3, v18

    :goto_f
    packed-switch v3, :pswitch_data_2

    .line 48
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    .line 49
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-direct {v1, v0, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 50
    :pswitch_4
    new-instance v3, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;

    .line 51
    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    move-object/from16 v22, v4

    iget-object v4, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v4

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5}, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;I)V

    .line 52
    invoke-static {v3}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    .line 53
    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v10, v0, v2}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v10

    move/from16 v17, v5

    const/4 v5, 0x2

    goto/16 :goto_12

    :pswitch_5
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    const/4 v5, 0x1

    .line 54
    new-instance v3, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;

    iget-object v4, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    .line 55
    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v4

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-direct {v3, v4, v2, v5}, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;I)V

    .line 56
    invoke-static {v3}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    .line 57
    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v10, v0, v2}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v10

    goto :goto_11

    :pswitch_6
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 58
    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v10, v2, v0}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v10

    goto :goto_11

    :pswitch_7
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    if-eqz v6, :cond_1d

    .line 59
    invoke-interface {v7}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1c

    new-array v3, v5, [Lnet/sf/saxon/om/Sequence;

    iget-object v4, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    aput-object v4, v3, v18

    const/16 v17, 0x1

    aput-object v2, v3, v17

    goto :goto_10

    :cond_1c
    const/4 v3, 0x3

    const/16 v17, 0x1

    new-array v3, v3, [Lnet/sf/saxon/om/Sequence;

    iget-object v4, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    aput-object v4, v3, v18

    aput-object v2, v3, v17

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    aput-object v2, v3, v5

    goto :goto_10

    :cond_1d
    const/4 v5, 0x2

    const/16 v17, 0x1

    .line 60
    invoke-interface {v7}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v3

    if-ne v3, v5, :cond_1e

    new-array v3, v5, [Lnet/sf/saxon/om/Sequence;

    aput-object v2, v3, v18

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    aput-object v2, v3, v17

    goto :goto_10

    :cond_1e
    const/4 v3, 0x3

    new-array v3, v3, [Lnet/sf/saxon/om/Sequence;

    aput-object v2, v3, v18

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    aput-object v2, v3, v17

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    aput-object v2, v3, v5

    .line 61
    :goto_10
    invoke-interface {v7, v1, v3}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    .line 62
    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v10

    goto :goto_12

    :pswitch_8
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_11
    const/4 v5, 0x2

    const/16 v17, 0x1

    goto :goto_12

    :cond_1f
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    const/4 v5, 0x2

    const/16 v17, 0x1

    .line 63
    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v10, v2, v0}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v0

    move-object v10, v0

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto/16 :goto_d

    :cond_20
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v4, v10

    goto/16 :goto_8

    :cond_21
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_2
        -0x13a3b4e4 -> :sswitch_1
        -0x8e4675a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6123d516 -> :sswitch_5
        -0x3255da35 -> :sswitch_4
        0x38a0fd3f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6123d516 -> :sswitch_c
        -0x60ed74c9 -> :sswitch_b
        -0x3255da35 -> :sswitch_a
        -0x13a3b4e4 -> :sswitch_9
        -0x8e4675a -> :sswitch_8
        0x38a0fd3f -> :sswitch_7
        0x3b4e8454 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public exportAdditionalArguments(Lnet/sf/saxon/expr/SystemFunctionCall;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p1}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    const-string v0, "duplicates"

    invoke-static {v0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    const-string v0, "duplicates-error-code"

    invoke-static {v0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->i:Ljava/lang/String;

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    return-void
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    return-object p0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v2, :cond_4

    array-length p0, p1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, p1, v2

    instance-of p1, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_2

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    const-string p1, "duplicates"

    invoke-static {p1}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string p1, "combine"

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    check-cast v1, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-virtual {v1}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const v1, 0xe000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "NewMap"

    return-object p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v1, p3, v0

    instance-of v2, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "duplicates"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Q{http://saxon.sf.net/}duplicates-error-code"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Q{http://saxon.sf.net/}on-duplicates"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Function;

    if-eqz v1, :cond_0

    const-string p1, "use-callback"

    :cond_0
    const-string v2, "Q{http://saxon.sf.net/}final"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v2

    const-string v3, "Q{http://saxon.sf.net/}key-type"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v3

    const-string v4, "merge"

    invoke-virtual {v3, v4, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;

    iput-object p1, v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->h:Ljava/lang/String;

    iput-object p2, v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->i:Ljava/lang/String;

    iput-object v1, v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->j:Lnet/sf/saxon/om/Function;

    const-string p1, "string"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->k:Z

    iput-boolean v2, v3, Lnet/sf/saxon/ma/map/MapFunctionSet$MapMerge;->l:Z

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 p1, 0x0

    aget-object p2, p3, p1

    aput-object p2, p0, p1

    invoke-virtual {v3, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
