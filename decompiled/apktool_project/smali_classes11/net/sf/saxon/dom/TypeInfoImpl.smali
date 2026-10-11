.class public Lnet/sf/saxon/dom/TypeInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/TypeInfo;


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;

.field public final f:Lnet/sf/saxon/type/SchemaType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->e:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->f:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->f:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->f:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->f:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->f:Lnet/sf/saxon/type/SchemaType;

    invoke-interface {v3}, Lnet/sf/saxon/type/SchemaType;->getDerivationMethod()I

    move-result v3

    and-int/2addr v3, p3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v3

    if-ne v3, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/type/AnyType;

    if-eqz v1, :cond_3

    return v2

    :cond_3
    new-instance v1, Lnet/sf/saxon/dom/TypeInfoImpl;

    iget-object p0, p0, Lnet/sf/saxon/dom/TypeInfoImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/dom/TypeInfoImpl;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/SchemaType;)V

    invoke-virtual {v1, p1, p2, p3}, Lnet/sf/saxon/dom/TypeInfoImpl;->isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
