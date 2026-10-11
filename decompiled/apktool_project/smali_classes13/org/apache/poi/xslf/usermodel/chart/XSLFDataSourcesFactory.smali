.class public Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringCellRangeDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalCellRangeDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$AbstractCellRangeDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralStringArrayDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralNumericalArrayDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringArrayDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;,
        Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$AbstractArrayDataSource;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArray([Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralStringArrayDataSource;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralStringArrayDataSource;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringArrayDataSource;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringArrayDataSource;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringArrayDataSource;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringArrayDataSource;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/Number;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">([TT;)",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralNumericalArrayDataSource;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralNumericalArrayDataSource;-><init>([Ljava/lang/Number;)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/Number;Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;-><init>([Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromArray([Ljava/lang/Number;Ljava/lang/String;I)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">([TT;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;-><init>([Ljava/lang/Number;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$1;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V

    return-object v0

    .line 3
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$2;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V

    return-object v0

    .line 5
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$3;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V

    return-object v0

    .line 7
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;->getStrLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$4;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)V

    :cond_4
    return-object v0
.end method

.method public static fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;",
            ")",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$5;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    return-object v0

    .line 11
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$6;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    :cond_2
    return-object v0
.end method

.method public static fromNumericCellRange(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalCellRangeDataSource;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalCellRangeDataSource;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-object v0
.end method

.method public static fromStringCellRange(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringCellRangeDataSource;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$StringCellRangeDataSource;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-object v0
.end method
