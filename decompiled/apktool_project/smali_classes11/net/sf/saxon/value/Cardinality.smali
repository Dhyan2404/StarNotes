.class public final Lnet/sf/saxon/value/Cardinality;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-le p0, v0, :cond_2

    if-gt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v0

    :goto_2
    if-le p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v2, :cond_4

    const/16 p1, 0x2000

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    if-eqz p0, :cond_5

    const/16 p0, 0x4000

    goto :goto_5

    :cond_5
    move p0, v1

    :goto_5
    add-int/2addr p1, p0

    if-eqz v0, :cond_6

    const v1, 0x8000

    :cond_6
    add-int/2addr p1, v1

    return p1
.end method

.method public static allowsMany(I)Z
    .locals 1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static allowsZero(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)I
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c(I)I
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x8000

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_5

    const/16 v0, 0x4000

    if-eq p0, v0, :cond_4

    const/16 v0, 0x6000

    if-eq p0, v0, :cond_3

    const v0, 0x8000

    if-eq p0, v0, :cond_2

    const v0, 0xc000

    if-eq p0, v0, :cond_1

    const v0, 0xe000

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "zero or more"

    return-object p0

    :cond_1
    const-string p0, "one or more"

    return-object p0

    :cond_2
    const-string p0, "more than one"

    return-object p0

    :cond_3
    const-string p0, "zero or one"

    return-object p0

    :cond_4
    const-string p0, "exactly one"

    return-object p0

    :cond_5
    const-string p0, "exactly zero"

    return-object p0
.end method

.method public static expectsMany(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->expectsMany(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/Atomizer;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/Atomizer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->expectsMany(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->expectsMany(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    return p0
.end method

.method public static fromOccurrenceIndicator(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_5

    const/16 v5, 0xb0

    if-eq v0, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_2

    const/16 v5, 0x30

    if-eq v0, v5, :cond_1

    const/16 v5, 0x31

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    goto :goto_1

    :cond_2
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v3

    goto :goto_1

    :cond_3
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v4

    goto :goto_1

    :cond_4
    const-string v0, "\u00b0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x5

    goto :goto_1

    :cond_5
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_b

    if-eq p0, v4, :cond_a

    if-eq p0, v3, :cond_9

    const/16 v0, 0x4000

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    const/16 p0, 0x2000

    return p0

    :cond_8
    return v0

    :cond_9
    const p0, 0xc000

    return p0

    :cond_a
    const p0, 0xe000

    return p0

    :cond_b
    const/16 p0, 0x6000

    return p0
.end method

.method public static generateJavaScriptChecker(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "function c() {return true;};"

    return-object p0

    :cond_0
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_1

    const-string p0, "function c(n) {return n==1;};"

    return-object p0

    :cond_1
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_2

    const-string p0, "function c(n) {return n==0;};"

    return-object p0

    :cond_2
    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "function c(n) {return n>=1;};"

    return-object p0

    :cond_3
    const-string p0, "function c(n) {return n<=1;};"

    return-object p0
.end method

.method public static getOccurrenceIndicator(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4000

    if-eq p0, v0, :cond_2

    const/16 v0, 0x6000

    if-eq p0, v0, :cond_1

    const v0, 0x8000

    const-string v1, "+"

    if-eq p0, v0, :cond_0

    const v0, 0xc000

    if-eq p0, v0, :cond_0

    const-string p0, "*"

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    const-string p0, "?"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    const-string p0, "0"

    return-object p0
.end method

.method public static multiply(II)I
    .locals 1

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    return p1

    :cond_2
    const/16 v0, 0x6000

    if-ne p0, v0, :cond_3

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    const v0, 0xc000

    if-ne p0, v0, :cond_4

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    const p0, 0xe000

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static subsumes(II)Z
    .locals 0

    or-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sum(II)I
    .locals 2

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->c(I)I

    move-result v0

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->b(I)I

    move-result p0

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->b(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {v0, p0}, Lnet/sf/saxon/value/Cardinality;->a(II)I

    move-result p0

    return p0
.end method

.method public static union(II)I
    .locals 0

    or-int/2addr p0, p1

    const p1, 0xa000

    if-ne p0, p1, :cond_0

    const p0, 0xe000

    :cond_0
    return p0
.end method
