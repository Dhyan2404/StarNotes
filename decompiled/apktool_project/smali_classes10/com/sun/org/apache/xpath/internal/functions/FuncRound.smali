.class public Lcom/sun/org/apache/xpath/internal/functions/FuncRound;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6e9d33d4555c1233L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpl-double v0, p0, v0

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    cmpg-double v0, p0, v1

    if-gez v0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0

    :cond_0
    cmpl-double v0, p0, v1

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object v0
.end method
