.class public interface abstract Lnet/sf/saxon/functions/FunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/StaticContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation
.end method

.method public abstract copy()Lnet/sf/saxon/functions/FunctionLibrary;
.end method

.method public abstract getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method
