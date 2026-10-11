.class public Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "SourceFile"


# instance fields
.field _characterCells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field _fontColor:Ljava/awt/Color;

.field _fontSize:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getRowArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_0

    aget-object v1, p1, p2

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v4, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string p2, "Size"

    invoke-static {p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_characterCells:Ljava/util/Map;

    const-string p2, "Color"

    invoke-static {p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    :cond_1
    return-void
.end method


# virtual methods
.method public getFontColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->_fontSize:Ljava/lang/Double;

    return-object p0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 0

    return-void
.end method
