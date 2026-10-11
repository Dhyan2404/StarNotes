.class public Lnet/sf/saxon/functions/hof/CurriedFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/om/Function;

.field public final f:[Lnet/sf/saxon/om/Sequence;

.field public g:Lnet/sf/saxon/type/FunctionItemType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    array-length v0, v0

    new-array v1, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    move v3, v4

    goto :goto_1

    :cond_0
    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/om/Function;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    instance-of v0, p2, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    check-cast p2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0, p1, v1}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "curriedFunc"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/Function;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "args"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_1

    :cond_0
    invoke-static {v2, p1}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "partially-applied function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 9

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->e:Lnet/sf/saxon/om/Function;

    invoke-interface {v0}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    instance-of v2, v0, Lnet/sf/saxon/type/SpecificFunctionType;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v8, v3, v6

    if-nez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v7, [Lnet/sf/saxon/value/SequenceType;

    if-eqz v2, :cond_4

    move v2, v5

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->f:[Lnet/sf/saxon/om/Sequence;

    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    aget-object v6, v6, v5

    aput-object v6, v3, v2

    move v2, v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v0, v3, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    iput-object v0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CurriedFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
