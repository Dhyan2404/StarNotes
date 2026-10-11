.class public Lnet/sf/saxon/query/Annotation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIVATE:Lnet/sf/saxon/om/StructuredQName;

.field public static final PUBLIC:Lnet/sf/saxon/om/StructuredQName;

.field public static final SIMPLE:Lnet/sf/saxon/om/StructuredQName;

.field public static final UPDATING:Lnet/sf/saxon/om/StructuredQName;


# instance fields
.field public a:Lnet/sf/saxon/om/StructuredQName;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "updating"

    const-string v2, ""

    const-string v3, "http://www.w3.org/2012/xquery"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/query/Annotation;->UPDATING:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "simple"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/query/Annotation;->SIMPLE:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "private"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/query/Annotation;->PRIVATE:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "public"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/query/Annotation;->PUBLIC:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/query/Annotation;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public static a(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v2

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    cmpl-double p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addAnnotationParameter(Lnet/sf/saxon/value/AtomicValue;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/query/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/query/Annotation;->a:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/query/Annotation;

    iget-object v2, p1, Lnet/sf/saxon/query/Annotation;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/query/Annotation;->getAnnotationParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/query/Annotation;->getAnnotationParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    iget-object v3, p1, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {v2, v3}, Lnet/sf/saxon/query/Annotation;->a(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnnotationParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    return-object p0
.end method

.method public getAnnotationQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/Annotation;->a:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/Annotation;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/query/Annotation;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
