.class public abstract Lorg/apache/poi/hssf/converter/AbstractExcelConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

.field private fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

.field private outputColumnHeaders:Z

.field private outputHiddenColumns:Z

.field private outputHiddenRows:Z

.field private outputLeadingSpacesAsNonBreaking:Z

.field private outputRowNumbers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    new-instance v0, Lorg/apache/poi/hwpf/converter/DefaultFontReplacer;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/converter/DefaultFontReplacer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputColumnHeaders:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputLeadingSpacesAsNonBreaking:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputRowNumbers:Z

    return-void
.end method

.method public static getColumnWidth(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->getColumnWidthInPx(I)I

    move-result p0

    return p0
.end method

.method public static getDefaultColumnWidth(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultColumnWidth()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->getColumnWidthInPx(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    const/4 p0, 0x3

    invoke-static {p1, p0}, Lorg/apache/poi/hwpf/converter/NumberFormatter;->getNumber(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDocument()Lorg/w3c/dom/Document;
.end method

.method public getFontReplacer()Lorg/apache/poi/hwpf/converter/FontReplacer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    return-object p0
.end method

.method public getRowName(Lorg/apache/poi/hssf/usermodel/HSSFRow;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isOutputColumnHeaders()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputColumnHeaders:Z

    return p0
.end method

.method public isOutputHiddenColumns()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputHiddenColumns:Z

    return p0
.end method

.method public isOutputHiddenRows()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputHiddenRows:Z

    return p0
.end method

.method public isOutputLeadingSpacesAsNonBreaking()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputLeadingSpacesAsNonBreaking:Z

    return p0
.end method

.method public isOutputRowNumbers()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputRowNumbers:Z

    return p0
.end method

.method public isTextEmpty(Lorg/apache/poi/hssf/usermodel/HSSFCell;)Z
    .locals 4

    sget-object v0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, ""

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result p1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    :pswitch_5
    invoke-static {v2}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setFontReplacer(Lorg/apache/poi/hwpf/converter/FontReplacer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    return-void
.end method

.method public setOutputColumnHeaders(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputColumnHeaders:Z

    return-void
.end method

.method public setOutputHiddenColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputHiddenColumns:Z

    return-void
.end method

.method public setOutputHiddenRows(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputHiddenRows:Z

    return-void
.end method

.method public setOutputLeadingSpacesAsNonBreaking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputLeadingSpacesAsNonBreaking:Z

    return-void
.end method

.method public setOutputRowNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/converter/AbstractExcelConverter;->outputRowNumbers:Z

    return-void
.end method
