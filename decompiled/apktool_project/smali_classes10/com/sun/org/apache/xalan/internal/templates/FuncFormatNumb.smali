.class public Lcom/sun/org/apache/xalan/internal/templates/FuncFormatNumb;
.super Lcom/sun/org/apache/xpath/internal/functions/Function3Args;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    :cond_1
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->getArg0()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->getArg1()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "ER_CURRENCY_SIGN_ILLEGAL"

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->getArg2()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDecimalFormatComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "WG_NO_DECIMALFORMAT_DECLARATION"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v6, v5}, Lcom/sun/org/apache/xalan/internal/templates/FuncFormatNumb;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p0, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/QName;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDecimalFormatComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p1, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/text/DecimalFormatSymbols;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string p1, "Infinity"

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    const-string p1, "NaN"

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p1, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p0, "ER_MALFORMED_FORMAT_STRING"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public reportWrongNumberArgs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;

    const-string v0, "ER_TWO_OR_THREE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void
.end method
