.class public interface abstract Lnet/sf/saxon/expr/Binding;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
.end method

.method public abstract evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract getRequiredType()Lnet/sf/saxon/value/SequenceType;
.end method

.method public abstract getVariableQName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract isAssignable()Z
.end method

.method public abstract isGlobal()Z
.end method
