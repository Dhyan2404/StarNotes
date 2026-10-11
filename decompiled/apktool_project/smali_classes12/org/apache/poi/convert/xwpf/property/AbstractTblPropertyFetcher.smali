.class public abstract Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;


# instance fields
.field private borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

.field private margin:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    return-object p0
.end method

.method public getCellMargin()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->margin:[D

    return-object p0
.end method

.method public getCellMarginFunction(I)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/c5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/c5;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/b5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/b5;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sunia/HTREnginev2/a5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/a5;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/HTREnginev2/z4;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z4;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getTcMarginFunction(I)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/g5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/g5;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/f5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/f5;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sunia/HTREnginev2/e5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/e5;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/HTREnginev2/d5;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/d5;-><init>()V

    :goto_0
    return-object p0
.end method

.method public initBorders()V
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->isSetTcBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-interface {p0, v1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-interface {p0, v1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-interface {p0, v1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-interface {p0, v1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    :cond_0
    return-void
.end method

.method public initMargin()V
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->isSetTcMar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->margin:[D

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->margin:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCellMargin(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
