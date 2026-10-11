.class final Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AxisIterator"
.end annotation


# instance fields
.field private final _axis:I

.field private _dtmId:I

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private final _type:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;II)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_dtmId:I

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_type:I

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;II)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_dtmId:I

    iput p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_dtmId:I

    return-object v0
.end method

.method public getLast()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getLast()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public gotoMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    :cond_0
    return-void
.end method

.method public isReverse()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->isReverse(I)Z

    move-result p0

    return p0
.end method

.method public next()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    return-object p0
.end method

.method public setMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    :cond_0
    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setRestartable(Z)V

    :cond_0
    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    ushr-int/lit8 v0, p1, 0x10

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_dtmId:I

    if-eq v1, v0, :cond_4

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_type:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;)[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;)[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_type:I

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;)[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_axis:I

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_type:I

    invoke-interface {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_4
    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_dtmId:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0
.end method
