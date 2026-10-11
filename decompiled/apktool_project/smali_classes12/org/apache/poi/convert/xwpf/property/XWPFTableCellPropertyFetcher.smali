.class public Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;
.source "SourceFile"


# instance fields
.field private gridSpan:I

.field private rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

.field private tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->readDocument()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->readGridSpan()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->gridSpan:I

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initBorders()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initMargin()V

    return-void
.end method

.method private getCTTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCTTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCellMargin(Ljava/util/function/Function;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getCTTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;

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

.method private readGridSpan()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetGridSpan()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getGridSpan()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 2

    sget-object v0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p1, Lcom/sunia/HTREnginev2/nuo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/nuo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/ouo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ouo;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/sunia/HTREnginev2/luo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/luo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/muo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/muo;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/sunia/HTREnginev2/uuo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/uuo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/vuo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vuo;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/sunia/HTREnginev2/suo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/suo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/tuo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tuo;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/sunia/HTREnginev2/quo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/quo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/ruo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ruo;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/sunia/HTREnginev2/kuo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/kuo;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/puo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/puo;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getCTTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    :cond_1
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

.method public getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object p0

    return-object p0
.end method

.method public getCellMargin(I)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->getTcMarginFunction(I)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getCellMargin(Ljava/util/function/Function;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getGridSpan()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->gridSpan:I

    return p0
.end method

.method public getRowPropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    return-object p0
.end method

.method public getTableCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object p0
.end method

.method public getTablePropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getTablePropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    move-result-object p0

    return-object p0
.end method

.method public getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->isSetTcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetVMerge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge;->CONTINUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSetTcBorders()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetTcBorders()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetTcMar()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetTcMar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
