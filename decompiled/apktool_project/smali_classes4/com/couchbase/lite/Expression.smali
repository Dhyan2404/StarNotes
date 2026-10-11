.class public abstract Lcom/couchbase/lite/Expression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Expression$UnaryExpression;,
        Lcom/couchbase/lite/Expression$BinaryExpression;,
        Lcom/couchbase/lite/Expression$CompoundExpression;,
        Lcom/couchbase/lite/Expression$ValueExpression;,
        Lcom/couchbase/lite/Expression$ParameterExpression;,
        Lcom/couchbase/lite/Expression$FTIExpression;,
        Lcom/couchbase/lite/Expression$AggregateExpression;,
        Lcom/couchbase/lite/Expression$CollationExpression;,
        Lcom/couchbase/lite/Expression$IdxExpression;,
        Lcom/couchbase/lite/Expression$FunctionExpression;
    }
.end annotation


# static fields
.field private static final PARAM_EXPRESSION:Ljava/lang/String; = "expression"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()Lcom/couchbase/lite/PropertyExpression;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/PropertyExpression;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/couchbase/lite/PropertyExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static booleanValue(Z)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static date(Ljava/util/Date;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static doubleValue(D)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static floatValue(F)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fullTextIndex(Ljava/lang/String;)Lcom/couchbase/lite/FullTextIndexExpression;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$FTIExpression;

    const-string v1, "indexName"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FTIExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static intValue(I)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list(Ljava/util/List;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static longValue(J)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static map(Ljava/util/Map;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static negated(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$CompoundExpression;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "NOT"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$CompoundExpression;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static not(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->negated(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static number(Ljava/lang/Number;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static parameter(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$ParameterExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ParameterExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/PropertyExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/PropertyExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$ValueExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Expression$ValueExpression;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "+"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$CompoundExpression;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "AND"

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Expression$CompoundExpression;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract asJSON()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public between(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "lower bound"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "upper bound"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$AggregateExpression;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/couchbase/lite/Expression$AggregateExpression;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string p2, "BETWEEN"

    invoke-direct {p1, p0, v0, p2}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object p1
.end method

.method public collate(Lcom/couchbase/lite/Collation;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "collation"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$CollationExpression;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Expression$CollationExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Collation;)V

    return-object v0
.end method

.method public divide(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "/"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "="

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public greaterThan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, ">"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public greaterThanOrEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, ">="

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs in([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # [Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/Expression$AggregateExpression;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/couchbase/lite/Expression$AggregateExpression;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "IN"

    invoke-direct {p1, p0, v0, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty \'IN\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public is(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "IS"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNot(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "IS NOT"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNotValued()Lcom/couchbase/lite/Expression;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$UnaryExpression;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$UnaryExpression;-><init>(Lcom/couchbase/lite/Expression;I)V

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->negated(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isNullOrMissing()Lcom/couchbase/lite/Expression;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$UnaryExpression;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$UnaryExpression;-><init>(Lcom/couchbase/lite/Expression;I)V

    new-instance v1, Lcom/couchbase/lite/Expression$UnaryExpression;

    const/16 v2, 0x3eb

    invoke-direct {v1, p0, v2}, Lcom/couchbase/lite/Expression$UnaryExpression;-><init>(Lcom/couchbase/lite/Expression;I)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isValued()Lcom/couchbase/lite/Expression;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$UnaryExpression;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$UnaryExpression;-><init>(Lcom/couchbase/lite/Expression;I)V

    return-object v0
.end method

.method public lessThan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "<"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public lessThanOrEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "<="

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public like(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "LIKE"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public modulo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "%"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public multiply(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "*"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public notEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "!="

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public notNullOrMissing()Lcom/couchbase/lite/Expression;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isNullOrMissing()Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->negated(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$CompoundExpression;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "OR"

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Expression$CompoundExpression;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public regex(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "regexp_like()"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public subtract(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Expression$BinaryExpression;

    const-string v1, "-"

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/Expression$BinaryExpression;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
