.class public Lnet/sf/saxon/type/JavaExternalObjectType;
.super Lnet/sf/saxon/type/ExternalObjectType;
.source "SourceFile"


# instance fields
.field protected javaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/type/ExternalObjectType;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    return-void
.end method

.method public static classNameToLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x24

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    const-string v1, "_-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static classNameToQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/java-type"

    invoke-static {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->classNameToLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "jt"

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static localNameToClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    const/16 v7, 0x2d

    if-eqz v4, :cond_2

    const/16 v8, 0x5f

    if-ne v5, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_0

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v8

    goto :goto_1

    :cond_0
    if-ne v5, v7, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    :cond_2
    if-ne v5, v7, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    check-cast p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    iget-object p1, p1, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    new-instance p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getRelationship(Lnet/sf/saxon/type/JavaExternalObjectType;)Lnet/sf/saxon/type/Affinity;
    .locals 1

    iget-object p1, p1, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    iget-object v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://saxon.sf.net/java-type"

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->classNameToQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne p2, v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->classNameToQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
