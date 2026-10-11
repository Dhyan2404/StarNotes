.class public interface abstract Lnet/sf/saxon/lib/FunctionAnnotationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract check(Lnet/sf/saxon/query/AnnotationList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getAssertionNamespace()Ljava/lang/String;
.end method

.method public abstract relationship(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/Affinity;
.end method

.method public abstract satisfiesAssertion(Lnet/sf/saxon/query/Annotation;Lnet/sf/saxon/query/AnnotationList;)Z
.end method
