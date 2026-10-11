.class public Lnet/sf/saxon/functions/Sum$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/Fold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Sum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/XPathContext;

.field public final b:Lnet/sf/saxon/value/AtomicValue;

.field public c:Lnet/sf/saxon/value/AtomicValue;

.field public d:Z

.field public final e:Lnet/sf/saxon/lib/ConversionRules;

.field public final f:Lnet/sf/saxon/type/StringConverter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/AtomicValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/functions/Sum$a;->d:Z

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    iput-object p2, p0, Lnet/sf/saxon/functions/Sum$a;->b:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->e:Lnet/sf/saxon/lib/ConversionRules;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->f:Lnet/sf/saxon/type/StringConverter;

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

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

    iget-boolean v0, p0, Lnet/sf/saxon/functions/Sum$a;->d:Z

    const-string v1, " which is neither numeric, nor a duration"

    const-string v2, "Input to sum() contains a value of type "

    const/4 v3, 0x0

    const-string v4, "FORG0006"

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lnet/sf/saxon/functions/Sum$a;->d:Z

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/Sum$a;->f:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    return-void

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-nez v0, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-nez v0, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    return-void

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    instance-of v5, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/functions/Sum$a;->f:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_5

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    iget-object v1, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v3, p1, v1}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    goto :goto_3

    :cond_5
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Input to sum() contains a mix of numeric and non-numeric values"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v3, v0, Lnet/sf/saxon/value/DurationValue;

    if-eqz v3, :cond_a

    instance-of v1, v0, Lnet/sf/saxon/value/DayTimeDurationValue;

    if-nez v1, :cond_8

    instance-of v1, v0, Lnet/sf/saxon/value/YearMonthDurationValue;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Input to sum() contains a duration that is neither a dayTimeDuration nor a yearMonthDuration"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    instance-of v1, p1, Lnet/sf/saxon/value/DurationValue;

    if-eqz v1, :cond_9

    check-cast v0, Lnet/sf/saxon/value/DurationValue;

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DurationValue;->add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    :goto_3
    return-void

    :cond_9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Input to sum() contains a mix of duration and non-duration values"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1
.end method

.method public result()Lnet/sf/saxon/om/Sequence;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/functions/Sum$a;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->b:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/Sum$a;->c:Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method
