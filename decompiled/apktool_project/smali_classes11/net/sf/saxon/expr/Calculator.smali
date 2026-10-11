.class public abstract Lnet/sf/saxon/expr/Calculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/Calculator$g;,
        Lnet/sf/saxon/expr/Calculator$l;,
        Lnet/sf/saxon/expr/Calculator$k;,
        Lnet/sf/saxon/expr/Calculator$f;,
        Lnet/sf/saxon/expr/Calculator$h;,
        Lnet/sf/saxon/expr/Calculator$j;,
        Lnet/sf/saxon/expr/Calculator$i;,
        Lnet/sf/saxon/expr/Calculator$c;,
        Lnet/sf/saxon/expr/Calculator$d;,
        Lnet/sf/saxon/expr/Calculator$b;,
        Lnet/sf/saxon/expr/Calculator$IntegerIdivInteger;,
        Lnet/sf/saxon/expr/Calculator$IntegerModInteger;,
        Lnet/sf/saxon/expr/Calculator$IntegerDivInteger;,
        Lnet/sf/saxon/expr/Calculator$IntegerTimesInteger;,
        Lnet/sf/saxon/expr/Calculator$IntegerMinusInteger;,
        Lnet/sf/saxon/expr/Calculator$IntegerPlusInteger;,
        Lnet/sf/saxon/expr/Calculator$DecimalIdivDecimal;,
        Lnet/sf/saxon/expr/Calculator$DecimalModDecimal;,
        Lnet/sf/saxon/expr/Calculator$DecimalDivDecimal;,
        Lnet/sf/saxon/expr/Calculator$DecimalTimesDecimal;,
        Lnet/sf/saxon/expr/Calculator$DecimalMinusDecimal;,
        Lnet/sf/saxon/expr/Calculator$DecimalPlusDecimal;,
        Lnet/sf/saxon/expr/Calculator$FloatIdivFloat;,
        Lnet/sf/saxon/expr/Calculator$FloatModFloat;,
        Lnet/sf/saxon/expr/Calculator$FloatDivFloat;,
        Lnet/sf/saxon/expr/Calculator$FloatTimesFloat;,
        Lnet/sf/saxon/expr/Calculator$FloatMinusFloat;,
        Lnet/sf/saxon/expr/Calculator$FloatPlusFloat;,
        Lnet/sf/saxon/expr/Calculator$e;,
        Lnet/sf/saxon/expr/Calculator$DoubleModDouble;,
        Lnet/sf/saxon/expr/Calculator$DoubleDivDouble;,
        Lnet/sf/saxon/expr/Calculator$DoubleTimesDouble;,
        Lnet/sf/saxon/expr/Calculator$DoubleMinusDouble;,
        Lnet/sf/saxon/expr/Calculator$DoublePlusDouble;,
        Lnet/sf/saxon/expr/Calculator$AnyIdivAny;,
        Lnet/sf/saxon/expr/Calculator$AnyModAny;,
        Lnet/sf/saxon/expr/Calculator$AnyDivAny;,
        Lnet/sf/saxon/expr/Calculator$AnyTimesAny;,
        Lnet/sf/saxon/expr/Calculator$AnyMinusAny;,
        Lnet/sf/saxon/expr/Calculator$AnyPlusAny;
    }
.end annotation


# static fields
.field public static final ANY_ANY:[Lnet/sf/saxon/expr/Calculator;

.field public static final DATETIME_DATETIME:[Lnet/sf/saxon/expr/Calculator;

.field public static final DATETIME_DURATION:[Lnet/sf/saxon/expr/Calculator;

.field public static final DECIMAL_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

.field public static final DECIMAL_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

.field public static final DECIMAL_FLOAT:[Lnet/sf/saxon/expr/Calculator;

.field public static final DECIMAL_INTEGER:[Lnet/sf/saxon/expr/Calculator;

.field public static final DIV:I = 0x3

.field public static final DOUBLE_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

.field public static final DOUBLE_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

.field public static final DOUBLE_FLOAT:[Lnet/sf/saxon/expr/Calculator;

.field public static final DOUBLE_INTEGER:[Lnet/sf/saxon/expr/Calculator;

.field public static final DURATION_DATETIME:[Lnet/sf/saxon/expr/Calculator;

.field public static final DURATION_DURATION:[Lnet/sf/saxon/expr/Calculator;

.field public static final DURATION_NUMERIC:[Lnet/sf/saxon/expr/Calculator;

.field public static final FLOAT_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

.field public static final FLOAT_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

.field public static final FLOAT_FLOAT:[Lnet/sf/saxon/expr/Calculator;

.field public static final FLOAT_INTEGER:[Lnet/sf/saxon/expr/Calculator;

.field public static final IDIV:I = 0x5

.field public static final INTEGER_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

.field public static final INTEGER_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

.field public static final INTEGER_FLOAT:[Lnet/sf/saxon/expr/Calculator;

.field public static final INTEGER_INTEGER:[Lnet/sf/saxon/expr/Calculator;

.field public static final MINUS:I = 0x1

.field public static final MOD:I = 0x4

.field public static final NUMERIC_DURATION:[Lnet/sf/saxon/expr/Calculator;

.field public static final PLUS:I = 0x0

.field public static final TIMES:I = 0x2

.field public static final a:[I

.field public static final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "[",
            "Lnet/sf/saxon/expr/Calculator;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->a:[I

    new-array v1, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyPlusAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyPlusAny;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyMinusAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyMinusAny;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyTimesAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyTimesAny;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyDivAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyDivAny;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyModAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyModAny;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lnet/sf/saxon/expr/Calculator$AnyIdivAny;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$AnyIdivAny;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->ANY_ANY:[Lnet/sf/saxon/expr/Calculator;

    new-array v1, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v2, Lnet/sf/saxon/expr/Calculator$DoublePlusDouble;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$DoublePlusDouble;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lnet/sf/saxon/expr/Calculator$DoubleMinusDouble;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$DoubleMinusDouble;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lnet/sf/saxon/expr/Calculator$DoubleTimesDouble;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$DoubleTimesDouble;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lnet/sf/saxon/expr/Calculator$DoubleDivDouble;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$DoubleDivDouble;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lnet/sf/saxon/expr/Calculator$DoubleModDouble;

    invoke-direct {v2}, Lnet/sf/saxon/expr/Calculator$DoubleModDouble;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lnet/sf/saxon/expr/Calculator$e;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lnet/sf/saxon/expr/Calculator$e;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v2, v1, v8

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->DOUBLE_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->DOUBLE_FLOAT:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->DOUBLE_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->DOUBLE_INTEGER:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->FLOAT_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

    new-array v2, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatPlusFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatPlusFloat;-><init>()V

    aput-object v10, v2, v3

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatMinusFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatMinusFloat;-><init>()V

    aput-object v10, v2, v4

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatTimesFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatTimesFloat;-><init>()V

    aput-object v10, v2, v5

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatDivFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatDivFloat;-><init>()V

    aput-object v10, v2, v6

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatModFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatModFloat;-><init>()V

    aput-object v10, v2, v7

    new-instance v10, Lnet/sf/saxon/expr/Calculator$FloatIdivFloat;

    invoke-direct {v10}, Lnet/sf/saxon/expr/Calculator$FloatIdivFloat;-><init>()V

    aput-object v10, v2, v8

    sput-object v2, Lnet/sf/saxon/expr/Calculator;->FLOAT_FLOAT:[Lnet/sf/saxon/expr/Calculator;

    sput-object v2, Lnet/sf/saxon/expr/Calculator;->FLOAT_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

    sput-object v2, Lnet/sf/saxon/expr/Calculator;->FLOAT_INTEGER:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->DECIMAL_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

    sput-object v2, Lnet/sf/saxon/expr/Calculator;->DECIMAL_FLOAT:[Lnet/sf/saxon/expr/Calculator;

    new-array v10, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalPlusDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalPlusDecimal;-><init>()V

    aput-object v11, v10, v3

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalMinusDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalMinusDecimal;-><init>()V

    aput-object v11, v10, v4

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalTimesDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalTimesDecimal;-><init>()V

    aput-object v11, v10, v5

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalDivDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalDivDecimal;-><init>()V

    aput-object v11, v10, v6

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalModDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalModDecimal;-><init>()V

    aput-object v11, v10, v7

    new-instance v11, Lnet/sf/saxon/expr/Calculator$DecimalIdivDecimal;

    invoke-direct {v11}, Lnet/sf/saxon/expr/Calculator$DecimalIdivDecimal;-><init>()V

    aput-object v11, v10, v8

    sput-object v10, Lnet/sf/saxon/expr/Calculator;->DECIMAL_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

    sput-object v10, Lnet/sf/saxon/expr/Calculator;->DECIMAL_INTEGER:[Lnet/sf/saxon/expr/Calculator;

    sput-object v1, Lnet/sf/saxon/expr/Calculator;->INTEGER_DOUBLE:[Lnet/sf/saxon/expr/Calculator;

    sput-object v2, Lnet/sf/saxon/expr/Calculator;->INTEGER_FLOAT:[Lnet/sf/saxon/expr/Calculator;

    sput-object v10, Lnet/sf/saxon/expr/Calculator;->INTEGER_DECIMAL:[Lnet/sf/saxon/expr/Calculator;

    new-array v11, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerPlusInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerPlusInteger;-><init>()V

    aput-object v12, v11, v3

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerMinusInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerMinusInteger;-><init>()V

    aput-object v12, v11, v4

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerTimesInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerTimesInteger;-><init>()V

    aput-object v12, v11, v5

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerDivInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerDivInteger;-><init>()V

    aput-object v12, v11, v6

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerModInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerModInteger;-><init>()V

    aput-object v12, v11, v7

    new-instance v12, Lnet/sf/saxon/expr/Calculator$IntegerIdivInteger;

    invoke-direct {v12}, Lnet/sf/saxon/expr/Calculator$IntegerIdivInteger;-><init>()V

    aput-object v12, v11, v8

    sput-object v11, Lnet/sf/saxon/expr/Calculator;->INTEGER_INTEGER:[Lnet/sf/saxon/expr/Calculator;

    new-array v12, v0, [Lnet/sf/saxon/expr/Calculator;

    aput-object v9, v12, v3

    new-instance v13, Lnet/sf/saxon/expr/Calculator$b;

    invoke-direct {v13, v9}, Lnet/sf/saxon/expr/Calculator$b;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v13, v12, v4

    aput-object v9, v12, v5

    aput-object v9, v12, v6

    aput-object v9, v12, v7

    aput-object v9, v12, v8

    sput-object v12, Lnet/sf/saxon/expr/Calculator;->DATETIME_DATETIME:[Lnet/sf/saxon/expr/Calculator;

    new-array v13, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v14, Lnet/sf/saxon/expr/Calculator$d;

    invoke-direct {v14, v9}, Lnet/sf/saxon/expr/Calculator$d;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v14, v13, v3

    new-instance v14, Lnet/sf/saxon/expr/Calculator$c;

    invoke-direct {v14, v9}, Lnet/sf/saxon/expr/Calculator$c;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v14, v13, v4

    aput-object v9, v13, v5

    aput-object v9, v13, v6

    aput-object v9, v13, v7

    aput-object v9, v13, v8

    sput-object v13, Lnet/sf/saxon/expr/Calculator;->DATETIME_DURATION:[Lnet/sf/saxon/expr/Calculator;

    new-array v14, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v15, Lnet/sf/saxon/expr/Calculator$i;

    invoke-direct {v15, v9}, Lnet/sf/saxon/expr/Calculator$i;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v15, v14, v3

    aput-object v9, v14, v4

    aput-object v9, v14, v5

    aput-object v9, v14, v6

    aput-object v9, v14, v7

    aput-object v9, v14, v8

    sput-object v14, Lnet/sf/saxon/expr/Calculator;->DURATION_DATETIME:[Lnet/sf/saxon/expr/Calculator;

    new-array v15, v0, [Lnet/sf/saxon/expr/Calculator;

    new-instance v0, Lnet/sf/saxon/expr/Calculator$j;

    invoke-direct {v0, v9}, Lnet/sf/saxon/expr/Calculator$j;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v0, v15, v3

    new-instance v0, Lnet/sf/saxon/expr/Calculator$h;

    invoke-direct {v0, v9}, Lnet/sf/saxon/expr/Calculator$h;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v0, v15, v4

    aput-object v9, v15, v5

    new-instance v0, Lnet/sf/saxon/expr/Calculator$f;

    invoke-direct {v0, v9}, Lnet/sf/saxon/expr/Calculator$f;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v0, v15, v6

    aput-object v9, v15, v7

    aput-object v9, v15, v8

    sput-object v15, Lnet/sf/saxon/expr/Calculator;->DURATION_DURATION:[Lnet/sf/saxon/expr/Calculator;

    const/4 v0, 0x6

    new-array v8, v0, [Lnet/sf/saxon/expr/Calculator;

    aput-object v9, v8, v3

    aput-object v9, v8, v4

    new-instance v0, Lnet/sf/saxon/expr/Calculator$k;

    invoke-direct {v0, v9}, Lnet/sf/saxon/expr/Calculator$k;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v0, v8, v5

    new-instance v0, Lnet/sf/saxon/expr/Calculator$g;

    invoke-direct {v0, v9}, Lnet/sf/saxon/expr/Calculator$g;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v0, v8, v6

    aput-object v9, v8, v7

    const/4 v0, 0x5

    aput-object v9, v8, v0

    sput-object v8, Lnet/sf/saxon/expr/Calculator;->DURATION_NUMERIC:[Lnet/sf/saxon/expr/Calculator;

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/sf/saxon/expr/Calculator;

    aput-object v9, v0, v3

    aput-object v9, v0, v4

    new-instance v3, Lnet/sf/saxon/expr/Calculator$l;

    invoke-direct {v3, v9}, Lnet/sf/saxon/expr/Calculator$l;-><init>(Lnet/sf/saxon/expr/Calculator$a;)V

    aput-object v3, v0, v5

    aput-object v9, v0, v6

    aput-object v9, v0, v7

    const/4 v3, 0x5

    aput-object v9, v0, v3

    sput-object v0, Lnet/sf/saxon/expr/Calculator;->NUMERIC_DURATION:[Lnet/sf/saxon/expr/Calculator;

    new-instance v3, Lnet/sf/saxon/z/IntHashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v3, Lnet/sf/saxon/expr/Calculator;->b:Lnet/sf/saxon/z/IntHashMap;

    new-instance v3, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v3, v4}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v3, Lnet/sf/saxon/expr/Calculator;->c:Lnet/sf/saxon/z/IntHashMap;

    const-string v3, "DOUBLE_DOUBLE"

    const/16 v4, 0x205

    invoke-static {v4, v4, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DOUBLE_FLOAT"

    const/16 v5, 0x204

    invoke-static {v4, v5, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DOUBLE_DECIMAL"

    const/16 v6, 0x203

    invoke-static {v4, v6, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DOUBLE_INTEGER"

    const/16 v7, 0x215

    invoke-static {v4, v7, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "FLOAT_DOUBLE"

    invoke-static {v5, v4, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "FLOAT_FLOAT"

    invoke-static {v5, v5, v2, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "FLOAT_DECIMAL"

    invoke-static {v5, v6, v2, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "FLOAT_INTEGER"

    invoke-static {v5, v7, v2, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DECIMAL_DOUBLE"

    invoke-static {v6, v4, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DECIMAL_FLOAT"

    invoke-static {v6, v5, v2, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DECIMAL_DECIMAL"

    invoke-static {v6, v6, v10, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "DECIMAL_INTEGER"

    invoke-static {v6, v7, v10, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v3, "INTEGER_DOUBLE"

    invoke-static {v7, v4, v1, v3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "INTEGER_FLOAT"

    invoke-static {v7, v5, v2, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "INTEGER_DECIMAL"

    invoke-static {v7, v6, v10, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "INTEGER_INTEGER"

    invoke-static {v7, v7, v11, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "DATETIME_DATETIME"

    const/16 v2, 0x207

    invoke-static {v2, v2, v12, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "DATETIME_DURATION"

    const/16 v3, 0x206

    invoke-static {v2, v3, v13, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "DURATION_DATETIME"

    invoke-static {v3, v2, v14, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "DURATION_DURATION"

    invoke-static {v3, v3, v15, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "DURATION_NUMERIC"

    invoke-static {v3, v4, v8, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v3, v5, v8, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v3, v6, v8, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v3, v7, v8, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    const-string v1, "NUMERIC_DURATION"

    invoke-static {v4, v3, v0, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v5, v3, v0, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v6, v3, v0, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v7, v3, v0, v1}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0xf
        0x10
        0x11
        0x12
        0x13
        0x38
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V
    .locals 3

    const v0, 0xffff

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v0, p1

    or-int/2addr v0, v1

    sget-object v1, Lnet/sf/saxon/expr/Calculator;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, v0, p2}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/Calculator;->c:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, v0, p3}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x279

    const/16 v1, 0x27a

    const/16 v2, 0x206

    if-ne p0, v2, :cond_0

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_0
    if-ne p1, v2, :cond_1

    invoke-static {p0, v1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x208

    const/16 v1, 0x209

    const/16 v2, 0x207

    if-ne p0, v2, :cond_2

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {p0, v1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x277

    const/16 v1, 0x205

    if-ne p0, v1, :cond_4

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_4
    if-ne p1, v1, :cond_5

    invoke-static {p0, v0, p2, p3}, Lnet/sf/saxon/expr/Calculator;->a(II[Lnet/sf/saxon/expr/Calculator;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static b(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x12

    add-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static c(C)I
    .locals 1

    const/16 v0, 0x61

    if-eq p0, v0, :cond_7

    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    const/16 v0, 0x69

    if-eq p0, v0, :cond_5

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x63

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_2

    const/16 v0, 0x74

    if-eq p0, v0, :cond_1

    const/16 v0, 0x75

    if-ne p0, v0, :cond_0

    const/16 p0, 0x206

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const/16 p0, 0x207

    return p0

    :cond_2
    const/16 p0, 0x205

    return p0

    :cond_3
    const/16 p0, 0x203

    return p0

    :cond_4
    const/16 p0, 0x27b

    return p0

    :cond_5
    const/16 p0, 0x215

    return p0

    :cond_6
    const/16 p0, 0x204

    return p0

    :cond_7
    const/16 p0, 0x278

    return p0
.end method

.method public static decimalDivide(Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Calculator;->b(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Decimal divide by zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x10

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    sget-object p1, Lnet/sf/saxon/expr/Calculator;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Calculator;

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/Calculator;->ANY_ANY:[Lnet/sf/saxon/expr/Calculator;

    aget-object p0, p0, p2

    return-object p0

    :cond_1
    aget-object p0, p0, p2

    return-object p0
.end method

.method public static getCalculatorSetName(II)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x10

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    sget-object p1, Lnet/sf/saxon/expr/Calculator;->c:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTokenFromOperator(I)I
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/Calculator;->a:[I

    aget p0, v0, p0

    return p0
.end method

.method public static operatorFromCode(C)I
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method public static reconstructCalculator(Ljava/lang/String;)Lnet/sf/saxon/expr/Calculator;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Calculator;->c(C)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Calculator;->c(C)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Calculator;->operatorFromCode(C)I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Lnet/sf/saxon/expr/Calculator;->getCalculator(IIIZ)Lnet/sf/saxon/expr/Calculator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Any"

    const-string v1, "a"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Double"

    const-string v1, "d"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Float"

    const-string v1, "f"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Decimal"

    const-string v1, "c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Integer"

    const-string v1, "i"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Numeric"

    const-string v1, "n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DateTime"

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Duration"

    const-string v1, "u"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Plus"

    const-string v1, "+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Minus"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Times"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Div"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Idiv"

    const-string v1, "~"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mod"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
.end method
