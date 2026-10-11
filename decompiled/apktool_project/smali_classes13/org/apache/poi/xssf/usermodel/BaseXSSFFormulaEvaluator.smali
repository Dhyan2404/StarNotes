.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.super Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method private cacheExternalWorkbookCells(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 22

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->getXSSFCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->getReferencedWorkbooks()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v9

    move v14, v9

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    move v15, v8

    :goto_2
    if-gt v15, v14, :cond_3

    invoke-virtual {v6, v15}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v13

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v8

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v12

    move v10, v8

    :goto_3
    if-gt v10, v12, :cond_2

    invoke-virtual {v13, v10}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v11

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v8

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v9

    :goto_4
    if-gt v8, v9, :cond_1

    invoke-virtual {v11, v8}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRawValue()Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/util/CellReference;->formatAsString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v4

    int-to-long v3, v10

    const-wide/16 v19, 0x1

    add-long v3, v3, v19

    move/from16 v19, v8

    move-object v8, v7

    move/from16 v20, v9

    move-object/from16 v9, v16

    move/from16 v16, v10

    move-object/from16 v21, v11

    move-wide v10, v3

    move v3, v12

    move-object v12, v0

    move-object v0, v13

    move-object/from16 v13, v17

    invoke-virtual/range {v8 .. v13}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->cacheData(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v19, 0x1

    move-object v13, v0

    move v12, v3

    move/from16 v10, v16

    move/from16 v4, v18

    move/from16 v9, v20

    move-object/from16 v11, v21

    move-object/from16 v0, p1

    goto :goto_4

    :cond_1
    move/from16 v18, v4

    move/from16 v16, v10

    move v3, v12

    move-object v0, v13

    add-int/lit8 v10, v16, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    :cond_2
    move/from16 v18, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    :cond_3
    move/from16 v18, v4

    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->cacheExternalWorkbookCells(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    instance-of p0, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance p0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object p0

    :cond_0
    instance-of p0, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p0, :cond_1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p0, :cond_2

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    new-instance p0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    instance-of p0, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz p0, :cond_3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected eval class ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->getEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {p1, p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :goto_1
    return-void
.end method

.method public abstract toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
.end method
