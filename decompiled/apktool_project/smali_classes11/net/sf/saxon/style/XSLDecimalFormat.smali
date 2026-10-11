.class public Lnet/sf/saxon/style/XSLDecimalFormat;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u:Z

.field public u0:Lnet/sf/saxon/trans/DecimalSymbols;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u:Z

    return-void
.end method


# virtual methods
.method public final Z(ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u0:Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    sget-object p3, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    aget-object p1, p3, p1

    new-instance p3, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p2, p3}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2
.end method

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLDecimalFormat;->prepareAttributes()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->v:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u0:Lnet/sf/saxon/trans/DecimalSymbols;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-virtual {p0, p2, v0, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/DecimalFormatManager;->obtainNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u0:Lnet/sf/saxon/trans/DecimalSymbols;

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 p2, 0x1e

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/trans/DecimalSymbols;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    :goto_0
    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 7

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u:Z

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "zero-digit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "minus-sign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "exponent-separator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "grouping-separator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "infinity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_5
    const-string v5, "digit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_6
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_7
    const-string v5, "NaN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_8
    const-string v5, "percent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_9
    const-string v5, "per-mille"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_a
    const-string v5, "pattern-separator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    move v6, v0

    goto :goto_1

    :sswitch_b
    const-string v5, "decimal-separator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :pswitch_0
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->k0:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->J:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->y:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->x:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->z:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->q0:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->v:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->O:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->Q:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->Z:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->t0:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_b
    iput-object v2, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->w:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a805897 -> :sswitch_b
        -0x543a8318 -> :sswitch_a
        -0x44b6e4e7 -> :sswitch_9
        -0x28779bbb -> :sswitch_8
        0x130db -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x5b2792d -> :sswitch_5
        0xa526a28 -> :sswitch_4
        0x152e3a9b -> :sswitch_3
        0x48487147 -> :sswitch_2
        0x6a3e5cfa -> :sswitch_1
        0x6e95edc8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTSE0010"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->u0:Lnet/sf/saxon/trans/DecimalSymbols;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->J:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->O:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->Q:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->Z:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->k0:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->q0:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_9
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->y:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_a
    iget-object v0, p0, Lnet/sf/saxon/style/XSLDecimalFormat;->t0:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, p1}, Lnet/sf/saxon/style/XSLDecimalFormat;->Z(ILjava/lang/String;I)V

    :cond_b
    return-void
.end method
