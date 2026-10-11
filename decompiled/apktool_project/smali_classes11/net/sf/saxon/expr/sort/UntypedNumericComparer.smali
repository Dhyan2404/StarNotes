.class public Lnet/sf/saxon/expr/sort/UntypedNumericComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final b:[[D


# instance fields
.field public a:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [[D

    const/16 v1, 0xc

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->b:[[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4034000000000000L    # 20.0
        0x4069000000000000L    # 200.0
        0x409f400000000000L    # 2000.0
        0x40d3880000000000L    # 20000.0
        0x41086a0000000000L    # 200000.0
        0x413e848000000000L    # 2000000.0
        0x417312d000000000L    # 2.0E7
        0x41a7d78400000000L    # 2.0E8
        0x41ddcd6500000000L    # 2.0E9
        0x4212a05f20000000L    # 2.0E10
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4008000000000000L    # 3.0
        0x403e000000000000L    # 30.0
        0x4072c00000000000L    # 300.0
        0x40a7700000000000L    # 3000.0
        0x40dd4c0000000000L    # 30000.0
        0x41124f8000000000L    # 300000.0
        0x4146e36000000000L    # 3000000.0
        0x417c9c3800000000L    # 3.0E7
        0x41b1e1a300000000L    # 3.0E8
        0x41e65a0bc0000000L    # 3.0E9
        0x421bf08eb0000000L    # 3.0E10
    .end array-data

    :array_4
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4044000000000000L    # 40.0
        0x4079000000000000L    # 400.0
        0x40af400000000000L    # 4000.0
        0x40e3880000000000L    # 40000.0
        0x41186a0000000000L    # 400000.0
        0x414e848000000000L    # 4000000.0
        0x418312d000000000L    # 4.0E7
        0x41b7d78400000000L    # 4.0E8
        0x41edcd6500000000L    # 4.0E9
        0x4222a05f20000000L    # 4.0E10
    .end array-data

    :array_5
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4014000000000000L    # 5.0
        0x4049000000000000L    # 50.0
        0x407f400000000000L    # 500.0
        0x40b3880000000000L    # 5000.0
        0x40e86a0000000000L    # 50000.0
        0x411e848000000000L    # 500000.0
        0x415312d000000000L    # 5000000.0
        0x4187d78400000000L    # 5.0E7
        0x41bdcd6500000000L    # 5.0E8
        0x41f2a05f20000000L    # 5.0E9
        0x42274876e8000000L    # 5.0E10
    .end array-data

    :array_6
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4018000000000000L    # 6.0
        0x404e000000000000L    # 60.0
        0x4082c00000000000L    # 600.0
        0x40b7700000000000L    # 6000.0
        0x40ed4c0000000000L    # 60000.0
        0x41224f8000000000L    # 600000.0
        0x4156e36000000000L    # 6000000.0
        0x418c9c3800000000L    # 6.0E7
        0x41c1e1a300000000L    # 6.0E8
        0x41f65a0bc0000000L    # 6.0E9
        0x422bf08eb0000000L    # 6.0E10
    .end array-data

    :array_7
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x401c000000000000L    # 7.0
        0x4051800000000000L    # 70.0
        0x4085e00000000000L    # 700.0
        0x40bb580000000000L    # 7000.0
        0x40f1170000000000L    # 70000.0
        0x41255cc000000000L    # 700000.0
        0x415ab3f000000000L    # 7000000.0
        0x4190b07600000000L    # 7.0E7
        0x41c4dc9380000000L    # 7.0E8
        0x41fa13b860000000L    # 7.0E9
        0x42304c533c000000L    # 7.0E10
    .end array-data

    :array_8
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4020000000000000L    # 8.0
        0x4054000000000000L    # 80.0
        0x4089000000000000L    # 800.0
        0x40bf400000000000L    # 8000.0
        0x40f3880000000000L    # 80000.0
        0x41286a0000000000L    # 800000.0
        0x415e848000000000L    # 8000000.0
        0x419312d000000000L    # 8.0E7
        0x41c7d78400000000L    # 8.0E8
        0x41fdcd6500000000L    # 8.0E9
        0x4232a05f20000000L    # 8.0E10
    .end array-data

    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4022000000000000L    # 9.0
        0x4056800000000000L    # 90.0
        0x408c200000000000L    # 900.0
        0x40c1940000000000L    # 9000.0
        0x40f5f90000000000L    # 90000.0
        0x412b774000000000L    # 900000.0
        0x41612a8800000000L    # 9000000.0
        0x4195752a00000000L    # 9.0E7
        0x41cad27480000000L    # 9.0E8
        0x4200c388d0000000L    # 9.0E9
        0x4234f46b04000000L    # 9.0E10
    .end array-data

    :array_a
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/lib/ConversionRules;->DEFAULT:Lnet/sf/saxon/lib/ConversionRules;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public static a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/lib/ConversionRules;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x3f

    move v6, v3

    move v9, v6

    move v10, v9

    move v8, v4

    move v7, v5

    :goto_0
    int-to-long v11, v6

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v13

    cmp-long v13, v11, v13

    const/16 v14, 0x2d

    const/4 v15, 0x1

    if-gez v13, :cond_7

    invoke-virtual {v2, v11, v12}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_1

    const/16 v12, 0x39

    if-gt v11, v12, :cond_1

    if-gez v8, :cond_0

    add-int/lit8 v8, v11, -0x30

    :cond_0
    if-nez v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-ne v11, v14, :cond_3

    if-ne v7, v5, :cond_6

    if-gtz v10, :cond_6

    if-lez v9, :cond_2

    goto :goto_2

    :cond_2
    move v7, v11

    goto :goto_1

    :cond_3
    const/16 v12, 0x2e

    if-ne v11, v12, :cond_6

    if-lez v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v15

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    move v5, v3

    goto :goto_3

    :cond_7
    move v5, v15

    :goto_3
    if-gez v8, :cond_8

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    if-eqz v3, :cond_b

    if-lez v10, :cond_b

    const/16 v5, 0xa

    if-gt v10, v5, :cond_b

    sget-object v5, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->b:[[D

    aget-object v6, v5, v8

    aget-wide v11, v6, v10

    add-int/2addr v8, v15

    aget-object v5, v5, v8

    aget-wide v5, v5, v10

    if-ne v7, v14, :cond_9

    neg-double v5, v5

    neg-double v7, v11

    move-wide v11, v5

    move-wide v5, v7

    :cond_9
    cmpg-double v5, v5, v0

    if-gez v5, :cond_a

    return v4

    :cond_a
    cmpl-double v4, v11, v0

    if-lez v4, :cond_b

    return v15

    :cond_b
    if-eqz v3, :cond_c

    if-nez v9, :cond_c

    const/16 v3, 0xf

    if-gt v10, v3, :cond_c

    move-object/from16 v3, p1

    instance-of v4, v3, Lnet/sf/saxon/value/Int64Value;

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    :cond_c
    monitor-enter p0

    :try_start_0
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static quickCompare(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;ILnet/sf/saxon/lib/ConversionRules;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/lib/ConversionRules;)I

    move-result p0

    const/4 p1, 0x1

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    if-eqz p0, :cond_5

    goto :goto_5

    :pswitch_1
    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    return p1

    :pswitch_2
    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    return p1

    :pswitch_3
    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    return p1

    :pswitch_4
    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move p1, p3

    :goto_3
    return p1

    :pswitch_5
    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move p1, p3

    :goto_4
    return p1

    :cond_5
    move p1, p3

    :goto_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0

    :try_start_0
    check-cast p1, Lnet/sf/saxon/value/StringValue;

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->a:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/lib/ConversionRules;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/expr/sort/ComparisonException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/ComparisonException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 0

    const-string p0, "QUNC"

    return-object p0
.end method
