.class public Lcom/sunia/calculatorv2/ink/solver/SolverContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
    }
.end annotation


# instance fields
.field private final decimalFormat:Ljava/text/DecimalFormat;

.field private final degree:Z

.field private final epsilon:J

.field private final fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

.field private final precision:I

.field private final scientificFormat:Ljava/text/DecimalFormat;

.field private final truncated:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-direct {p0, p1, p2, v0}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;-><init>(ZILcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;)V

    return-void
.end method

.method public constructor <init>(ZILcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;-><init>(ZILcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;Z)V

    return-void
.end method

.method public constructor <init>(ZILcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;Z)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->degree:Z

    .line 5
    iput p2, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->precision:I

    .line 6
    iput-object p3, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    .line 7
    iput-boolean p4, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    const-string p1, "."

    const-wide/16 v0, 0x1

    const/4 p3, 0x0

    :goto_0
    const-string v2, "0"

    if-ge p3, p2, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-wide v0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->epsilon:J

    const-string p2, "E0}"

    if-eqz p4, :cond_1

    .line 10
    new-instance p3, Ljava/text/DecimalFormat;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\ldots"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->decimalFormat:Ljava/text/DecimalFormat;

    .line 11
    new-instance p4, Ljava/text/DecimalFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->scientificFormat:Ljava/text/DecimalFormat;

    .line 12
    sget-object p0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p3, p0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 13
    sget-object p0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p4, p0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance p3, Ljava/text/DecimalFormat;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->decimalFormat:Ljava/text/DecimalFormat;

    .line 15
    new-instance p4, Ljava/text/DecimalFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->scientificFormat:Ljava/text/DecimalFormat;

    .line 16
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p3, p0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 17
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p4, p0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    :goto_1
    return-void
.end method

.method private encodeDouble(D)Ljava/lang/String;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "?"

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\\infty"

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\left("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->scientificFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    if-eqz p0, :cond_2

    const-string p0, "\\ldots\\times10^{"

    goto :goto_0

    :cond_2
    const-string p0, "\\times10^{"

    :goto_0
    const-string p2, "E"

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\right)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public encodeNumber(Lcom/sunia/HTREnginev2/z0;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->h()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->g()Lcom/sunia/HTREnginev2/z0;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    sget-object v6, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->IMPROPER_FRACTION:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const-string v7, "}\\right)"

    const-string v8, "}{"

    if-ne v5, v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\\left(\\frac{"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->MIXED_NUMBER:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const-wide/16 v9, 0x0

    if-ne v5, v6, :cond_5

    div-long p0, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\left("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v6, p0, v9

    if-eqz v6, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\frac{"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    iget-wide v5, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->epsilon:J

    mul-long/2addr v5, v1

    rem-long/2addr v5, v3

    cmp-long v5, v5, v9

    if-nez v5, :cond_6

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->encodeDouble(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->i()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->encodeDouble(D)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz v0, :cond_9

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "(-"

    if-eq p1, v0, :cond_8

    const-string p1, "("

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\underline{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    iget-boolean v2, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->degree:Z

    iget-boolean v3, p1, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->degree:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->precision:I

    iget v3, p1, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->precision:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    iget-object v3, p1, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    iget-boolean p1, p1, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFractionPreference()Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    return-object p0
.end method

.method public getPrecision()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->precision:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->degree:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->precision:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDegree()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->degree:Z

    return p0
.end method

.method public isExact(Lcom/sunia/HTREnginev2/z0;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->fractionPreference:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    sget-object v2, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->epsilon:J

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/z0;->b()J

    move-result-wide p0

    rem-long/2addr v2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTruncated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->truncated:Z

    return p0
.end method
