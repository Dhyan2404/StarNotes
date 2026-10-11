.class abstract Lcom/couchbase/lite/AbstractFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ABS()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static acos(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ACOS()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static asin(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ASIN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static atan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ATAN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static atan2(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const-string v1, "y"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "x"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "ATAN2()"

    invoke-static {p0, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static avg(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "AVG()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static ceil(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "CEIL()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const-string v1, "operand"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "substring"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "CONTAINS()"

    invoke-static {p0, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static cos(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "COS()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static count(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "."

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    :goto_0
    const-string v0, "COUNT()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static degrees(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "DEGREES()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/couchbase/lite/Expression;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "E()"

    invoke-static {v1, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object v0

    return-object v0
.end method

.method public static exp(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "EXP()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method private static varargs expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static floor(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "FLOOR()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LENGTH()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static ln(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static log(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LOG()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LOWER()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static ltrim(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LTRIM()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static max(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "MAX()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static millisToString(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "MILLIS_TO_STR()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static millisToUTC(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "MILLIS_TO_UTC()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static min(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "MIN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static pi()Lcom/couchbase/lite/Expression;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "PI()"

    invoke-static {v1, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object v0

    return-object v0
.end method

.method public static power(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const-string v1, "base"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "exponent"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "POWER()"

    invoke-static {p0, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static radians(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "RADIANS()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static round(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ROUND()"

    .line 1
    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static round(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const-string v1, "operand"

    .line 2
    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "digits"

    .line 3
    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "ROUND()"

    .line 4
    invoke-static {p0, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static rtrim(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "RTRIM()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method private static sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "operand expression"

    invoke-static {p1, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static sign(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SIGN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static sin(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SIN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static sqrt(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SQRT()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static stringToMillis(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "STR_TO_MILLIS()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static stringToUTC(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "STR_TO_UTC()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SUM()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static tan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "TAN()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static trim(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "TRIM()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static trunc(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "TRUNC()"

    .line 1
    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static trunc(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const-string v1, "operand"

    .line 2
    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "digits"

    .line 3
    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "TRUNC()"

    .line 4
    invoke-static {p0, v0}, Lcom/couchbase/lite/AbstractFunction;->expr(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method

.method public static upper(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "UPPER()"

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractFunction;->sexpr(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method
