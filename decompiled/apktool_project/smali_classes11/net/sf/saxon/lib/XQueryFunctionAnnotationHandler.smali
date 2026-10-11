.class public Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/FunctionAnnotationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;
    }
.end annotation


# static fields
.field public static final a:[Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x10

    new-array v0, v0, [Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    sget-object v2, Lnet/sf/saxon/query/Annotation;->SIMPLE:Lnet/sf/saxon/om/StructuredQName;

    const-string v3, "DV"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "XUST0032"

    invoke-direct {v1, v2, v5, v6, v4}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    sget-object v4, Lnet/sf/saxon/query/Annotation;->UPDATING:Lnet/sf/saxon/om/StructuredQName;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v1, v0, v6

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    sget-object v6, Lnet/sf/saxon/query/Annotation;->PUBLIC:Lnet/sf/saxon/om/StructuredQName;

    const-string v7, "IF"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "XQST0125"

    invoke-direct {v1, v6, v5, v9, v8}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    sget-object v8, Lnet/sf/saxon/query/Annotation;->PRIVATE:Lnet/sf/saxon/om/StructuredQName;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v8, v5, v9, v10}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    const-string v5, "DF"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0106"

    invoke-direct {v1, v8, v8, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v6, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v9, 0x5

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v6, v6, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v6, v8, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0116"

    invoke-direct {v1, v8, v8, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0x8

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v6, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v6, v6, v10, v9}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0xa

    aput-object v1, v0, v9

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v8, v10, v3}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "XUST0033"

    invoke-direct {v1, v4, v4, v6, v3}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v6, v3}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v2, v6, v3}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v4, v6, v3}, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;->a:[Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lnet/sf/saxon/query/AnnotationList;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/query/AnnotationList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/AnnotationList;->get(I)Lnet/sf/saxon/query/Annotation;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;->a:[Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;

    array-length v3, v2

    move v4, p0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-object v6, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->d:Ljava/util/Set;

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->b:Lnet/sf/saxon/om/StructuredQName;

    const-string v7, "Annotation %"

    if-eqz v6, :cond_2

    move v6, p0

    :goto_2
    if-ge v6, v0, :cond_3

    invoke-virtual {p1, v6}, Lnet/sf/saxon/query/AnnotationList;->get(I)Lnet/sf/saxon/query/Annotation;

    move-result-object v8

    iget-object v9, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v8}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object p0, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v1}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot appear more than once"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Annotations %"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot appear together"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/query/Annotation;->getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed here"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v5, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public getAssertionNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2012/xquery"

    return-object p0
.end method

.method public relationship(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/Affinity;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public satisfiesAssertion(Lnet/sf/saxon/query/Annotation;Lnet/sf/saxon/query/AnnotationList;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
