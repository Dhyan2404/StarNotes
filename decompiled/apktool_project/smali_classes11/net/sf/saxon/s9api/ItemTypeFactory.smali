.class public Lnet/sf/saxon/s9api/ItemTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemTypeFactory;->b(I)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemTypeFactory;->b(I)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;->makeVariant(Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const-string v4, ""

    invoke-direct {v3, v4, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown atomic type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)Lnet/sf/saxon/s9api/ItemType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/16 v0, 0x233

    if-eq p1, v0, :cond_1

    const/16 v0, 0x235

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown atomic type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getClarkName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DAY_TIME_DURATION:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ANY_ATOMIC_VALUE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->IDREF:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ID:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NCNAME:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NAME:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NMTOKEN:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_9
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->LANGUAGE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->TOKEN:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_b
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NORMALIZED_STRING:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_BYTE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_d
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_SHORT:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_e
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_INT:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_f
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_LONG:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_10
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_11
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NON_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_12
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->BYTE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_13
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->SHORT:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_14
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->INT:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_15
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->LONG:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_16
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_17
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NON_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_18
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->INTEGER:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_19
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NOTATION:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1a
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->QNAME:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1b
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ANY_URI:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1c
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->BASE64_BINARY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1d
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->HEX_BINARY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1e
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->G_MONTH:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1f
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->G_DAY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_20
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->G_MONTH_DAY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_21
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->G_YEAR:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_22
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->G_YEAR_MONTH:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_23
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DATE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_24
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->TIME:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_25
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DATE_TIME:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_26
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DURATION:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_27
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DOUBLE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_28
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->FLOAT:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_29
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DECIMAL:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_2a
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->BOOLEAN:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_2b
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->STRING:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DATE_TIME_STAMP:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ENTITY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x215
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x229
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x277
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public exposeItemType(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/s9api/ItemType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getArrayType(Lnet/sf/saxon/s9api/SequenceType;)Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    new-instance v1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/SequenceType;->getUnderlyingSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getAtomicType(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemTypeFactory;->a(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeTest(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    iget-object v3, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v5, v3, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget-object p2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, p2, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown schema type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    if-nez v2, :cond_3

    sget-object p1, Lnet/sf/saxon/s9api/XdmNodeKind;->ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemTypeFactory;->getNodeKindTest(Lnet/sf/saxon/s9api/XdmNodeKind;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v2, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_4
    if-nez v2, :cond_5

    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_5
    new-instance p1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    const/16 p2, 0x17

    invoke-direct {p1, v2, p2, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    new-instance p2, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p2, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p2
.end method

.method public getDocumentTest(Lnet/sf/saxon/s9api/ItemType;)Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/pattern/DocumentNodeTest;

    check-cast p1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/DocumentNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied itemType is not an element test"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementTest(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/QName;Z)Lnet/sf/saxon/s9api/ItemType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    iget-object v3, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v5, v3, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget-object p2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v0, p1, p2, p3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown schema type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    if-nez v2, :cond_3

    sget-object p1, Lnet/sf/saxon/s9api/XdmNodeKind;->ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemTypeFactory;->getNodeKindTest(Lnet/sf/saxon/s9api/XdmNodeKind;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v2, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_4
    if-nez v2, :cond_5

    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    :cond_5
    new-instance p1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    const/16 p2, 0x17

    invoke-direct {p1, v2, p2, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    new-instance p2, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p2, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p2
.end method

.method public getExternalObject(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    new-instance p0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    return-object p0
.end method

.method public getExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/s9api/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getJavaExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/type/JavaExternalObjectType;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getItemType(Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->isAtomicValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->isNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    .line 14
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    .line 15
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    .line 17
    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    new-instance v1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v1, p1}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    .line 19
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_3

    .line 20
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ANY_MAP:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    .line 21
    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_4

    .line 22
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ANY_ARRAY:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    .line 23
    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne p1, v0, :cond_5

    .line 24
    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    sget-object v0, Lnet/sf/saxon/type/AnyExternalObjectType;->THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1

    .line 25
    :cond_5
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ANY_FUNCTION:Lnet/sf/saxon/s9api/ItemType;

    return-object p0
.end method

.method public getItemType(Lnet/sf/saxon/s9api/XdmNodeKind;Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNodeKind;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Node kind must be element, attribute, or processing-instruction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    .line 3
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The name of a processing instruction must not be in a namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    .line 6
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    .line 7
    new-instance p1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object p1
.end method

.method public getMapType(Lnet/sf/saxon/s9api/ItemType;Lnet/sf/saxon/s9api/SequenceType;)Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    new-instance v1, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/SequenceType;->getUnderlyingSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Map key must be atomic"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNodeKindTest(Lnet/sf/saxon/s9api/XdmNodeKind;)Lnet/sf/saxon/s9api/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/ItemTypeFactory$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XdmNodeKind"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->NAMESPACE_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->PROCESSING_INSTRUCTION_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->COMMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->TEXT_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ATTRIBUTE_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->ELEMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->DOCUMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSchemaAttributeTest(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getAttributeDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No global declaration found for attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaElementTest(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getElementDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemTypeFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No global declaration found for element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newMap(Ljava/util/Map;)Lnet/sf/saxon/s9api/XdmMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lnet/sf/saxon/s9api/XdmMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmMap;->makeMap(Ljava/util/Map;)Lnet/sf/saxon/s9api/XdmMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
