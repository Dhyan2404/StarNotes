.class public Lorg/apache/poi/style/page/PageMargin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field bottom:F

.field footer:F

.field header:F

.field left:F

.field right:F

.field top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/style/page/PageMargin;

    iget v2, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    iget v3, p1, Lorg/apache/poi/style/page/PageMargin;->top:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    iget v3, p1, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    iget v3, p1, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    iget v3, p1, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    iget v3, p1, Lorg/apache/poi/style/page/PageMargin;->header:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    iget p1, p1, Lorg/apache/poi/style/page/PageMargin;->footer:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBottom()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    return p0
.end method

.method public getFooter()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    return p0
.end method

.method public getHeader()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    return p0
.end method

.method public getLeft()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    return p0
.end method

.method public getPageContentStyle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "margin-left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;margin-right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRight()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    return p0
.end method

.method public getTop()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetPgMar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getPgMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetLeft()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetRight()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetHeader()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;->xgetFooter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42f00000    # 120.0f

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    const/high16 p1, 0x42c00000    # 96.0f

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    iput p1, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageMargin{top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->header:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", footer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->footer:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "margin-left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;margin-right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;margin-top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageMargin;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;margin-bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/style/page/PageMargin;->bottom:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
