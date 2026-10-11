.class public interface abstract Lnet/sf/saxon/type/FunctionItemType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ItemType;


# virtual methods
.method public abstract getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;
.end method

.method public abstract getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->FUNCTION:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public abstract getResultType()Lnet/sf/saxon/value/SequenceType;
.end method

.method public abstract isArrayType()Z
.end method

.method public abstract isMapType()Z
.end method

.method public abstract makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
.end method
