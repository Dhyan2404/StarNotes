.class public Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;
    }
.end annotation


# instance fields
.field private final _indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private _theme:Lorg/apache/poi/xssf/model/ThemesTable;

.field private final border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 3
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 4
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/model/ThemesTable;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-void
.end method

.method private getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    return-object p0
.end method

.method private getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$1;->$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No suitable side specified for the border, had "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 5
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 7
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 9
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 11
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 12
    :pswitch_4
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 13
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 14
    :pswitch_5
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 15
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    goto :goto_0

    .line 16
    :pswitch_6
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 17
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;->values()[Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v6

    invoke-virtual {p1, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v6

    invoke-virtual {p1, v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalUp()Z

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalUp()Z

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalDown()Z

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalDown()Z

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetOutline()Z

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetOutline()Z

    move-result v2

    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalUp()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonalUp()Z

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonalUp()Z

    move-result v2

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonalDown()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonalDown()Z

    move-result v0

    iget-object v2, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonalDown()Z

    move-result v2

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetOutline()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getOutline()Z

    move-result p0

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getOutline()Z

    move-result p1

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    return v4

    :cond_9
    :goto_3
    return v1
.end method

.method public getBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->isSetColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_indexedColorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-static {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ThemesTable;->inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    :goto_0
    invoke-static {}, Lorg/apache/poi/ss/usermodel/BorderStyle;->values()[Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    return-object p0
.end method

.method public getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setBorderColor(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    if-nez p2, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setBorderStyle(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder$BorderSide;Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    return-void
.end method

.method public setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->_theme:Lorg/apache/poi/xssf/model/ThemesTable;

    return-void
.end method
