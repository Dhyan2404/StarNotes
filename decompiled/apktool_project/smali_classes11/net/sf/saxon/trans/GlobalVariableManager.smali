.class public interface abstract Lnet/sf/saxon/trans/GlobalVariableManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getEquivalentVariable(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/GlobalVariable;
.end method
