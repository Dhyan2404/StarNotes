.class public Lorg/apache/poi/xssf/usermodel/XSSFComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# instance fields
.field private final _comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

.field private final _comments:Lorg/apache/poi/xssf/model/Comments;

.field private _str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

.field private final _vmlShape:Lcom/microsoft/schemas/vml/CTShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 4
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    .line 5
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {p3}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result p0

    if-lez p0, :cond_0

    .line 7
    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    invoke-interface {p3, p1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/microsoft/schemas/office/excel/CTClientData;->setRowArray(ILjava/math/BigInteger;)V

    .line 10
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/microsoft/schemas/office/excel/CTClientData;->setColumnArray(ILjava/math/BigInteger;)V

    .line 11
    invoke-static {p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    return-void
.end method

.method private static avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 0

    invoke-interface {p0}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/xssf/model/Comments;->getAuthor(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object p0
.end method

.method public getCTShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->getAnchorArray(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    const/4 v3, 0x1

    aget v3, v2, v3

    mul-int/lit16 v9, v3, 0x2535

    const/4 v3, 0x3

    aget v3, v2, v3

    mul-int/lit16 v10, v3, 0x2535

    const/4 v3, 0x5

    aget v3, v2, v3

    mul-int/lit16 v11, v3, 0x2535

    const/4 v3, 0x7

    aget v3, v2, v3

    mul-int/lit16 v12, v3, 0x2535

    aget v13, v2, v1

    const/4 v1, 0x2

    aget v14, v2, v1

    const/4 v1, 0x4

    aget v15, v2, v1

    const/4 v1, 0x6

    aget v16, v2, v1

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public getColumn()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p0

    return p0
.end method

.method public getRow()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 5
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {p0, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/microsoft/schemas/office/excel/CTClientData;->sizeOfVisibleArray()I

    move-result p0

    if-lez p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {p0}, Lcom/microsoft/schemas/vml/CTShape;->getStyle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "visibility:visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public setAddress(II)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v1, v0, p0}, Lorg/apache/poi/xssf/model/Comments;->referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    .line 6
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->setRowArray(ILjava/math/BigInteger;)V

    .line 9
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->setColumnArray(ILjava/math/BigInteger;)V

    .line 10
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->avoidXmlbeansCorruptPointer(Lcom/microsoft/schemas/vml/CTShape;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v1, p1}, Lorg/apache/poi/xssf/model/Comments;->findAuthor(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method public setColumn(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setRow(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    .line 4
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only XSSFRichTextString argument is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "position:absolute"

    invoke-interface {v0, p1}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {p1, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/excel/CTClientData;->sizeOfVisibleArray()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;->X:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;

    invoke-interface {p1, v0}, Lcom/microsoft/schemas/office/excel/CTClientData;->addVisible(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V

    goto :goto_0

    :cond_0
    const-string p1, "position:absolute;visibility:hidden"

    invoke-interface {v0, p1}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {p1, v1}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/excel/CTClientData;->sizeOfVisibleArray()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->removeVisible(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method
