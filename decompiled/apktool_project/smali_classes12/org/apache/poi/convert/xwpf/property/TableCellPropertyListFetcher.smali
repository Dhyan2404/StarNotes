.class public Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;


# instance fields
.field private colWidthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->list:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTablePropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getColWidthList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->colWidthList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getTableCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-void
.end method

.method private findFirst(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;",
            "TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addFetcher(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/y7n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y7n;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    return-object p0
.end method

.method public getCellMargin(I)D
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getCellMargin()[D
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/x7n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x7n;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getColWidthList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->colWidthList:Ljava/util/List;

    return-object p0
.end method

.method public getColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getColor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    return-object p0
.end method

.method public getTableCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    move-result-object p0

    return-object p0
.end method

.method public isSetTcBorders()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetTcMar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
