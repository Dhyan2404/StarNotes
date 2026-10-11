.class public Lnet/sf/saxon/serialize/UnicodeNormalizer;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public final e:Ljava/text/Normalizer$Form;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "NFKD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "NFKC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "NFD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "NFC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown normalization form "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SESU0011"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    goto :goto_1

    :pswitch_1
    sget-object p1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    goto :goto_1

    :pswitch_2
    sget-object p1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    goto :goto_1

    :pswitch_3
    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d8b -> :sswitch_3
        0x12d8c -> :sswitch_2
        0x248510 -> :sswitch_1
        0x248511 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lnet/sf/saxon/serialize/UnicodeNormalizer;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->d(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 6

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->normalize(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-object p0
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->normalize(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public getNormalizationForm()Ljava/text/Normalizer$Form;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    return-object p0
.end method

.method public normalize(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    invoke-static {p1, p0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/UnicodeNormalizer;->e:Ljava/text/Normalizer$Form;

    invoke-static {p1, p0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/msn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/msn;-><init>(Lnet/sf/saxon/serialize/UnicodeNormalizer;)V

    invoke-interface {p3, v0}, Lnet/sf/saxon/om/AttributeMap;->apply(Ljava/util/function/Function;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v4

    iget-object v1, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
