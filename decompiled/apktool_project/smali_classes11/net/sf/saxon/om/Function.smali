.class public interface abstract Lnet/sf/saxon/om/Function;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Item;
.implements Lnet/sf/saxon/expr/Callable;
.implements Lnet/sf/saxon/om/GroundedValue;


# virtual methods
.method public abstract deepEquals(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/AtomicComparer;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getAnnotations()Lnet/sf/saxon/query/AnnotationList;
.end method

.method public abstract getArity()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
.end method

.method public abstract getFunctionName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->FUNCTION:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public abstract getOperandRoles()[Lnet/sf/saxon/expr/OperandRole;
.end method

.method public abstract isArray()Z
.end method

.method public abstract isMap()Z
.end method

.method public isSequenceVariadic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isTrustedResultType()Z
.end method

.method public abstract makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
