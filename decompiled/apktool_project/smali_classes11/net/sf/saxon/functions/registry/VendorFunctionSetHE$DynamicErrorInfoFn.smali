.class public Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$DynamicErrorInfoFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicErrorInfoFn"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p2, p2, p0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p0, v2

    goto :goto_1

    :sswitch_0
    const-string p0, "value"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string p0, "code"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string p0, "column-number"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string p0, "line-number"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string p0, "module"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorObject()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_7
    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_8

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string p1, "http://saxon.sf.net/"

    const-string p2, "XXXX9999"

    const-string v0, "saxon"

    invoke-direct {p0, v0, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance p1, Lnet/sf/saxon/value/QNameValue;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :pswitch_2
    if-nez v0, :cond_9

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of p0, v0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    if-eqz p0, :cond_a

    check-cast v0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p0

    goto :goto_2

    :cond_a
    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    :goto_2
    if-ne p0, v2, :cond_b

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_3
    if-nez v0, :cond_c

    move p0, v2

    goto :goto_3

    :cond_c
    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    :goto_3
    if-ne p0, v2, :cond_d

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p1

    :pswitch_4
    if-nez v0, :cond_e

    const/4 p0, 0x0

    goto :goto_4

    :cond_e
    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_f

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_10
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_5
        -0x3fb45994 -> :sswitch_4
        -0x3d5584be -> :sswitch_3
        -0x248bda60 -> :sswitch_2
        0x2eaded -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
