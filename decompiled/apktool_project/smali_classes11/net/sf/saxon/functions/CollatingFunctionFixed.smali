.class public abstract Lnet/sf/saxon/functions/CollatingFunctionFixed;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# instance fields
.field public h:Ljava/lang/String;

.field public i:Lnet/sf/saxon/lib/StringCollator;

.field public j:Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    iput-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->isSubstringMatchingFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    instance-of v1, v0, Lnet/sf/saxon/expr/sort/SimpleCollation;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/sort/SimpleCollation;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SimpleCollation;->getSubstringMatcher()Lnet/sf/saxon/lib/SubstringMatcher;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    instance-of v0, v0, Lnet/sf/saxon/lib/SubstringMatcher;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The collation requested for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support substring matching"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FOCH0004"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown collation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FOCH0002"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lnet/sf/saxon/functions/CollatingFunctionFixed;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/sf/saxon/functions/CollatingFunctionFree;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    check-cast v0, Lnet/sf/saxon/functions/CollatingFunctionFree;

    iget-object v1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/CollatingFunctionFree;->bindCollation(Ljava/lang/String;)Lnet/sf/saxon/functions/CollatingFunctionFixed;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_0
    :goto_0
    instance-of v1, v0, Lnet/sf/saxon/functions/CollatingFunctionFixed;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lnet/sf/saxon/functions/CollatingFunctionFixed;

    iget-object v1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object v1, v0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    .line 9
    iget-object p0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    iput-object p0, v0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public bridge synthetic copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->copy()Lnet/sf/saxon/functions/CollatingFunctionFixed;

    move-result-object p0

    return-object p0
.end method

.method public exportAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "collation"

    iget-object p0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAtomicComparer(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public getPreAllocatedAtomicComparer()Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getStringCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public importAttributes(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "collation"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->setCollationName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isSubstringMatchingFunction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public preAllocateComparer(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/expr/StaticContext;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {p2}, Lnet/sf/saxon/type/SimpleType;->getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->i:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;->makeAtomicComparer(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/EqualityComparer;->getInstance()Lnet/sf/saxon/expr/sort/EqualityComparer;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->j:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method

.method public setCollationName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->a()V

    return-void
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v0, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/CollatingFunctionFixed;->h:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->a()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
