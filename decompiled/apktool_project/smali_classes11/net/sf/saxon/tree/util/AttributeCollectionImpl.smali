.class public Lnet/sf/saxon/tree/util/AttributeCollectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;

.field public f:[Lnet/sf/saxon/om/NodeName;

.field public g:[Ljava/lang/String;

.field public h:[Lnet/sf/saxon/s9api/Location;

.field public i:[I

.field public j:I

.field public k:[Lnet/sf/saxon/type/SimpleType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    iput-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->e:Lnet/sf/saxon/Configuration;

    new-array p1, p2, [Lnet/sf/saxon/om/NodeName;

    iput-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    new-array p1, p2, [I

    iput-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    new-array p1, p2, [Lnet/sf/saxon/s9api/Location;

    iput-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    iput v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->e:Lnet/sf/saxon/Configuration;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    new-array v0, v1, [Lnet/sf/saxon/om/NodeName;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    new-array v0, v1, [Lnet/sf/saxon/s9api/Location;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Lnet/sf/saxon/type/SimpleType;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    array-length v0, v0

    iget v2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-ne v0, v2, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v2, 0x2

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/NodeName;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/Location;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/SimpleType;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    :cond_3
    iget v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    iget-object v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aput-object p1, v1, v0

    iget-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    aput p5, p1, v0

    iget-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    invoke-interface {p4}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p4

    aput-object p4, p1, v0

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->setTypeAnnotation(ILnet/sf/saxon/type/SimpleType;)V

    iget-object p1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    iget p2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    aput-object p3, p1, p2

    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3a

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v2, ""

    if-gez v0, :cond_1

    .line 3
    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 5
    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const/4 p1, 0x1

    .line 8
    aget-object p1, v0, p1

    .line 9
    :goto_0
    iget v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-ge v3, v0, :cond_4

    .line 10
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return v1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    :goto_0
    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getLocation(I)Lnet/sf/saxon/s9api/Location;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p1

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    return-object p0
.end method

.method public getProperties(I)I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget p0, v0, p1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getTypeAnnotation(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "CDATA"

    return-object p0

    :pswitch_1
    const-string p0, "ENTITIES"

    return-object p0

    :pswitch_2
    const-string p0, "ENTITY"

    return-object p0

    :pswitch_3
    const-string p0, "IDREFS"

    return-object p0

    :pswitch_4
    const-string p0, "IDREF"

    return-object p0

    :pswitch_5
    const-string p0, "ID"

    return-object p0

    :pswitch_6
    const-string p0, "NMTOKENS"

    return-object p0

    :pswitch_7
    const-string p0, "NMTOKEN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x22c
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getType(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTypeAnnotation(I)Lnet/sf/saxon/type/SimpleType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p1

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    iget p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->j:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object p0, v0, p1

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getValue(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setAttribute(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    aput-object p2, v0, p1

    .line 2
    iget-object p2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->i:[I

    aput p6, p2, p1

    .line 3
    iget-object p2, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->h:[Lnet/sf/saxon/s9api/Location;

    aput-object p5, p2, p1

    .line 4
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->setTypeAnnotation(ILnet/sf/saxon/type/SimpleType;)V

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->g:[Ljava/lang/String;

    aput-object p4, p0, p1

    return-void
.end method

.method public setAttribute(Lnet/sf/saxon/om/AttributeInfo;)V
    .locals 7

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result p1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v6

    move-object v0, p0

    .line 13
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->setAttribute(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public setTypeAnnotation(ILnet/sf/saxon/type/SimpleType;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    if-eqz p0, :cond_2

    aput-object p2, p0, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->f:[Lnet/sf/saxon/om/NodeName;

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/type/SimpleType;

    iput-object v1, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/sf/saxon/tree/util/AttributeCollectionImpl;->k:[Lnet/sf/saxon/type/SimpleType;

    aput-object p2, p0, p1

    goto :goto_0

    :cond_1
    aput-object p2, v1, p1

    :cond_2
    :goto_0
    return-void
.end method
