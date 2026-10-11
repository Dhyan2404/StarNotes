.class public Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;
.source "SourceFile"


# instance fields
.field private tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initBorders()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initMargin()V

    return-void
.end method

.method public static getCTBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 3

    .line 3
    sget-object v0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 4
    :pswitch_0
    new-instance p2, Lcom/sunia/HTREnginev2/kan;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/kan;-><init>()V

    .line 5
    new-instance v1, Lcom/sunia/HTREnginev2/lan;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lan;-><init>()V

    .line 6
    new-instance v2, Lcom/sunia/HTREnginev2/man;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/man;-><init>()V

    goto :goto_0

    .line 7
    :pswitch_1
    new-instance p2, Lcom/sunia/HTREnginev2/han;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/han;-><init>()V

    .line 8
    new-instance v1, Lcom/sunia/HTREnginev2/ian;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ian;-><init>()V

    .line 9
    new-instance v2, Lcom/sunia/HTREnginev2/jan;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jan;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance p2, Lcom/sunia/HTREnginev2/ean;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/ean;-><init>()V

    .line 11
    new-instance v1, Lcom/sunia/HTREnginev2/fan;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fan;-><init>()V

    .line 12
    new-instance v2, Lcom/sunia/HTREnginev2/gan;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/gan;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_3
    new-instance p2, Lcom/sunia/HTREnginev2/ban;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/ban;-><init>()V

    .line 14
    new-instance v1, Lcom/sunia/HTREnginev2/can;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/can;-><init>()V

    .line 15
    new-instance v2, Lcom/sunia/HTREnginev2/dan;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/dan;-><init>()V

    goto :goto_0

    .line 16
    :pswitch_4
    new-instance p2, Lcom/sunia/HTREnginev2/y9n;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/y9n;-><init>()V

    .line 17
    new-instance v1, Lcom/sunia/HTREnginev2/z9n;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/z9n;-><init>()V

    .line 18
    new-instance v2, Lcom/sunia/HTREnginev2/aan;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/aan;-><init>()V

    goto :goto_0

    .line 19
    :pswitch_5
    new-instance p2, Lcom/sunia/HTREnginev2/w9n;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/w9n;-><init>()V

    .line 20
    new-instance v1, Lcom/sunia/HTREnginev2/nan;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nan;-><init>()V

    .line 21
    new-instance v2, Lcom/sunia/HTREnginev2/x9n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/x9n;-><init>()V

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 23
    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    :cond_2
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCellMargin(Ljava/util/function/Function;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;)D"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getTblBorders(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->getTblBorders(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    .line 2
    invoke-static {p0, v0, p1}, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->getCTBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0
.end method

.method public getCellMargin(I)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->getCellMarginFunction(I)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->getCellMargin(Ljava/util/function/Function;)D

    move-result-wide p0

    return-wide p0
.end method

.method public isSetTcBorders()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetLeft()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetRight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetTop()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetBottom()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSetTcMar()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->tblPr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblCellMar()Z

    move-result p0

    return p0
.end method
