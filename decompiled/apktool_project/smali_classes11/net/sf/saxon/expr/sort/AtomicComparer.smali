.class public interface abstract Lnet/sf/saxon/expr/sort/AtomicComparer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public abstract comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public abstract getCollator()Lnet/sf/saxon/lib/StringCollator;
.end method

.method public abstract provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
.end method

.method public abstract save()Ljava/lang/String;
.end method
