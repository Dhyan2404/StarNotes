.class public Lcom/sun/org/apache/xpath/internal/functions/FuncSubstring;
.super Lcom/sun/org/apache/xpath/internal/functions/Function3Args;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x53387922fd0656eeL


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

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/FuncSubstring;->reportWrongNumberArgs()V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->m_arg1:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v3

    if-gtz v3, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-wide v1, -0x3ed17b8000000000L    # -1000000.0

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v1, v6

    if-lez v4, :cond_1

    double-to-int v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function3Args;->m_arg2:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    add-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    if-le p0, v3, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, p0

    :goto_1
    if-le v4, v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-interface {v0, v3, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->substring(II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    goto :goto_4

    :cond_6
    if-le v4, v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    :goto_4
    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

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

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
