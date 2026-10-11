.class public abstract Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v4, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    return-object p0
.end method

.method public abstract setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Section type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
