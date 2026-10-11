.class public final Lorg/apache/poi/ss/formula/ptg/NameXPxg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg;


# instance fields
.field private externalWorkbookNumber:I

.field private nameName:Ljava/lang/String;

.field private sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 3
    iput-object p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 7
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 8
    iget-object v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/NameXPxg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getExternalWorkbookNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "externalWorkbookNumber"

    new-instance v1, Lcom/sunia/HTREnginev2/jsj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jsj;-><init>(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)V

    const-string v2, "sheetName"

    new-instance v3, Lcom/sunia/HTREnginev2/ksj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ksj;-><init>(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)V

    const-string v4, "nameName"

    new-instance v5, Lcom/sunia/HTREnginev2/lsj;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/lsj;-><init>(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-object p0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v0, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
