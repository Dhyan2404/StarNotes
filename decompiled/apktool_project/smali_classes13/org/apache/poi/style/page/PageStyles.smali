.class public Lorg/apache/poi/style/page/PageStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field private bodyElementSize:I

.field private pageColumns:Lorg/apache/poi/style/page/PageColumns;

.field private pageIndex:I

.field private pageMargin:Lorg/apache/poi/style/page/PageMargin;

.field private pageNumType:Lorg/apache/poi/style/page/PageNumType;

.field private pageSize:Lorg/apache/poi/style/page/PageSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/style/page/PageSize;

    invoke-direct {v0}, Lorg/apache/poi/style/page/PageSize;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    new-instance v0, Lorg/apache/poi/style/page/PageMargin;

    invoke-direct {v0}, Lorg/apache/poi/style/page/PageMargin;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    new-instance v0, Lorg/apache/poi/style/page/PageColumns;

    invoke-direct {v0}, Lorg/apache/poi/style/page/PageColumns;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    new-instance v0, Lorg/apache/poi/style/page/PageNumType;

    invoke-direct {v0}, Lorg/apache/poi/style/page/PageNumType;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageNumType:Lorg/apache/poi/style/page/PageNumType;

    return-void
.end method

.method public static parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)Lorg/apache/poi/style/page/PageStyles;
    .locals 4

    new-instance v0, Lorg/apache/poi/style/page/PageStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/page/PageStyles;-><init>()V

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    invoke-virtual {v1, p0}, Lorg/apache/poi/style/page/PageSize;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    invoke-virtual {v1}, Lorg/apache/poi/style/page/PageSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    const/high16 v2, 0x444c0000    # 816.0f

    iput v2, v1, Lorg/apache/poi/style/page/PageSize;->width:F

    const/high16 v2, 0x44840000    # 1056.0f

    iput v2, v1, Lorg/apache/poi/style/page/PageSize;->height:F

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    const/high16 v2, 0x42f00000    # 120.0f

    iput v2, v1, Lorg/apache/poi/style/page/PageMargin;->left:F

    iput v2, v1, Lorg/apache/poi/style/page/PageMargin;->right:F

    const/high16 v2, 0x42c00000    # 96.0f

    iput v2, v1, Lorg/apache/poi/style/page/PageMargin;->top:F

    iput v2, v1, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    :cond_0
    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    invoke-virtual {v1, p0}, Lorg/apache/poi/style/page/PageMargin;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    iget-object v2, v0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    iget-object v3, v0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    invoke-virtual {v1, p0, v2, v3}, Lorg/apache/poi/style/page/PageColumns;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;Lorg/apache/poi/style/page/PageSize;Lorg/apache/poi/style/page/PageMargin;)V

    iget-object v1, v0, Lorg/apache/poi/style/page/PageStyles;->pageNumType:Lorg/apache/poi/style/page/PageNumType;

    invoke-virtual {v1, p0}, Lorg/apache/poi/style/page/PageNumType;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/style/page/PageStyles;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/style/page/PageStyles;

    iget-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    iget-object v2, p1, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    iget-object v2, p1, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    iget-object p1, p1, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBodyElementSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageStyles;->bodyElementSize:I

    return p0
.end method

.method public getPageColumns()Lorg/apache/poi/style/page/PageColumns;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageIndex:I

    return p0
.end method

.method public getPageMargin()Lorg/apache/poi/style/page/PageMargin;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    return-object p0
.end method

.method public getPageNumType()Lorg/apache/poi/style/page/PageNumType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageNumType:Lorg/apache/poi/style/page/PageNumType;

    return-object p0
.end method

.method public getPageSize()Lorg/apache/poi/style/page/PageSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    invoke-virtual {p0}, Lorg/apache/poi/style/page/PageSize;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public setBodyElementSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/style/page/PageStyles;->bodyElementSize:I

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/style/page/PageStyles;->pageIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageStyles{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/page/PageStyles;->pageSize:Lorg/apache/poi/style/page/PageSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/page/PageStyles;->pageMargin:Lorg/apache/poi/style/page/PageMargin;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/page/PageStyles;->pageColumns:Lorg/apache/poi/style/page/PageColumns;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/page/PageStyles;->pageNumType:Lorg/apache/poi/style/page/PageNumType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
