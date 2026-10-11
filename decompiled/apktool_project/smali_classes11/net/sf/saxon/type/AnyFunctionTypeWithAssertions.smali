.class public Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;
.super Lnet/sf/saxon/type/AnyFunctionType;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/query/AnnotationList;

.field public final f:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;->e:Lnet/sf/saxon/query/AnnotationList;

    iput-object p2, p0, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;->f:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static a(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/Configuration;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getAnnotations()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/query/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/Annotation;

    invoke-virtual {v0}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getFunctionAnnotationHandler(Ljava/lang/String;)Lnet/sf/saxon/lib/FunctionAnnotationHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lnet/sf/saxon/lib/FunctionAnnotationHandler;->satisfiesAssertion(Lnet/sf/saxon/query/Annotation;Lnet/sf/saxon/query/AnnotationList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;->e:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;->e:Lnet/sf/saxon/query/AnnotationList;

    check-cast p1, Lnet/sf/saxon/om/Function;

    invoke-virtual {p2}, Lnet/sf/saxon/type/TypeHierarchy;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;->a(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
