.class public Lorg/apache/poi/style/TableCellStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private bordersStyles:Lorg/apache/poi/style/BordersStyles;

.field private cellIndex:I

.field private fetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

.field private marginStyles:Lorg/apache/poi/style/MarginStyles;

.field private verAlign:Lorg/apache/poi/style/TextVerAlign;

.field private width:Lorg/apache/poi/style/UnitValue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/style/BordersStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/BordersStyles;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TableCellStyles;->bordersStyles:Lorg/apache/poi/style/BordersStyles;

    new-instance v0, Lorg/apache/poi/style/MarginStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/MarginStyles;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TableCellStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    sget-object v0, Lorg/apache/poi/style/TextVerAlign;->NONE:Lorg/apache/poi/style/TextVerAlign;

    iput-object v0, p0, Lorg/apache/poi/style/TableCellStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    iput-object p1, p0, Lorg/apache/poi/style/TableCellStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    iput p2, p0, Lorg/apache/poi/style/TableCellStyles;->cellIndex:I

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableCellStyles;->parse(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V

    return-void
.end method

.method private parse(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableCellStyles;->parseBordersStyles(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableCellStyles;->parseMarginStyles(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getColorValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TableCellStyles;->backgroundColor:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableCellStyles;->parseTableCellWidth(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TableCellStyles;->width:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableCellStyles;->parseVerticalAlign(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)Lorg/apache/poi/style/TextVerAlign;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TableCellStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    return-void
.end method

.method private parseBordersStyles(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TableCellStyles;->bordersStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parse(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V

    return-void
.end method

.method private parseMarginStyles(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TableCellStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/MarginStyles;->parse(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V

    return-void
.end method

.method private parseTableCellWidth(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)Lorg/apache/poi/style/UnitValue;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->getColWidthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->getFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getGridSpan()I

    move-result p1

    iget p0, p0, Lorg/apache/poi/style/TableCellStyles;->cellIndex:I

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_0

    if-lez p1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method private parseVerticalAlign(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;)Lorg/apache/poi/style/TextVerAlign;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->TOP:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_0
    sget-object p1, Lorg/apache/poi/style/TableCellStyles$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTableCell$XWPFVertAlign:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->TOP:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->MIDDLE:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->BOTTOM:Lorg/apache/poi/style/TextVerAlign;

    return-object p0
.end method


# virtual methods
.method public getWidthStyle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/TableCellStyles;->width:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/style/TableCellStyles;->backgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3b

    if-nez v1, :cond_0

    const-string v1, "background-color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TableCellStyles;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/style/TableCellStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {v1}, Lorg/apache/poi/style/MarginStyles;->toPaddingStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TableCellStyles;->bordersStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {v1}, Lorg/apache/poi/style/BordersStyles;->toTableStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TableCellStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lorg/apache/poi/style/TextVerAlign;->AUTO:Lorg/apache/poi/style/TextVerAlign;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-le v1, v3, :cond_1

    const-string v1, "vertical-align:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/TableCellStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    iget-object p0, p0, Lorg/apache/poi/style/TextVerAlign;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
