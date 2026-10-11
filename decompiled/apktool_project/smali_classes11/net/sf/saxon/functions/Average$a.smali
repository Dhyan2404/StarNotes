.class public Lnet/sf/saxon/functions/Average$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/Fold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Average;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/XPathContext;

.field public b:Lnet/sf/saxon/value/AtomicValue;

.field public c:Z

.field public final d:Lnet/sf/saxon/lib/ConversionRules;

.field public final e:Lnet/sf/saxon/type/StringConverter;

.field public f:I

.field public final synthetic g:Lnet/sf/saxon/functions/Average;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/Average;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->g:Lnet/sf/saxon/functions/Average;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/functions/Average$a;->c:Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/Average$a;->f:I

    iput-object p2, p0, Lnet/sf/saxon/functions/Average$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->d:Lnet/sf/saxon/lib/ConversionRules;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->e:Lnet/sf/saxon/type/StringConverter;

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    instance-of v0, p0, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processItem(Lnet/sf/saxon/om/Item;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/Average$a;->e:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/functions/Average$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/functions/Average$a;->f:I

    iget-boolean v0, p0, Lnet/sf/saxon/functions/Average$a;->c:Z

    const-string v1, ") that is neither numeric, nor a duration"

    const-string v2, "Input to avg() contains a value ("

    const/4 v3, 0x0

    const-string v4, "FORG0006"

    if-eqz v0, :cond_4

    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-nez v0, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-nez v0, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lnet/sf/saxon/value/DurationValue;

    if-eqz p0, :cond_2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input to avg() contains a duration ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") that is neither an xs:dayTimeDuration nor an xs:yearMonthDuration"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    iput-boolean v3, p0, Lnet/sf/saxon/functions/Average$a;->c:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    instance-of v5, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v5, :cond_6

    instance-of v1, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/functions/Average$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v3, p1, v1}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Input to avg() contains a mix of numeric and non-numeric values"

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of v3, v0, Lnet/sf/saxon/value/DurationValue;

    if-eqz v3, :cond_9

    instance-of v1, p1, Lnet/sf/saxon/value/DurationValue;

    if-eqz v1, :cond_8

    :try_start_0
    check-cast v0, Lnet/sf/saxon/value/DurationValue;

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DurationValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "XPTY0004"

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_7
    throw p0

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Input to avg() contains a mix of duration and non-duration values"

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public result()Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/functions/Average$a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/Average$a;->b:Lnet/sf/saxon/value/AtomicValue;

    instance-of v1, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget v2, p0, Lnet/sf/saxon/functions/Average$a;->f:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Average$a;->a:Lnet/sf/saxon/expr/XPathContext;

    const/4 v2, 0x3

    invoke-static {v0, v2, v1, p0}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Lnet/sf/saxon/value/DurationValue;

    iget p0, p0, Lnet/sf/saxon/functions/Average$a;->f:I

    int-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/value/DurationValue;->divide(D)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0
.end method
