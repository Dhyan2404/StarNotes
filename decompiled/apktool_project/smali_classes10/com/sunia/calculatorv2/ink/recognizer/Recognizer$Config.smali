.class public Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private categories:[I

.field private characterCandidateCount:I

.field private degradeLongLine:Z

.field private fixAlignment:Z

.field private fixFullWidth:Z

.field private fixSize:Z

.field private grammar:Lcom/sunia/HTREnginev2/i0;

.field private grammarFromCategories:Lcom/sunia/HTREnginev2/i0;

.field private languages:[Ljava/lang/String;

.field private maxLength:I

.field private modelCount:I

.field private needAlignment:Z

.field private needBoundingBox:Z

.field private ngramWeightDecoder:F

.field private ngramWeightPostcorrector:F

.field private startSymbol:Ljava/lang/String;

.field private textCandidateCount:I

.field private useWordList:Z

.field private wordCandidateCount:I

.field private words:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xDpi:F

.field private yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "zh_multidirectional"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/high16 v16, 0x7fc00000    # Float.NaN

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;-><init>(IIIIILcom/sunia/HTREnginev2/i0;[IZZZZZZZ[Ljava/lang/String;FFLjava/util/Map;Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(IIIIILcom/sunia/HTREnginev2/i0;ZZZ[Ljava/lang/String;FFLjava/util/Map;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/sunia/HTREnginev2/i0;",
            "ZZZ[",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 2
    invoke-direct/range {v0 .. v21}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;-><init>(IIIIILcom/sunia/HTREnginev2/i0;[IZZZZZZZ[Ljava/lang/String;FFLjava/util/Map;Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(IIIIILcom/sunia/HTREnginev2/i0;[IZZZZZZZ[Ljava/lang/String;FFLjava/util/Map;Ljava/lang/String;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/sunia/HTREnginev2/i0;",
            "[IZZZZZZZ[",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 4
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->characterCandidateCount:I

    move v1, p2

    .line 5
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->wordCandidateCount:I

    move v1, p3

    .line 6
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->textCandidateCount:I

    move v1, p4

    .line 7
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->maxLength:I

    move v1, p5

    .line 8
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->modelCount:I

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->categories:[I

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->useWordList:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->degradeLongLine:Z

    move v1, p12

    .line 12
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixAlignment:Z

    move v1, p10

    .line 13
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needAlignment:Z

    move v1, p11

    .line 14
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needBoundingBox:Z

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixSize:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixFullWidth:Z

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->languages:[Ljava/lang/String;

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightDecoder:F

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightPostcorrector:F

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->words:Ljava/util/Map;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->startSymbol:Ljava/lang/String;

    move/from16 v1, p20

    .line 22
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    move/from16 v1, p21

    .line 23
    iput v1, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    return-void
.end method


# virtual methods
.method public copy()Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;
    .locals 24

    move-object/from16 v0, p0

    new-instance v23, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    move-object/from16 v1, v23

    iget v2, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->characterCandidateCount:I

    iget v3, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->wordCandidateCount:I

    iget v4, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->textCandidateCount:I

    iget v5, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->maxLength:I

    iget v6, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->modelCount:I

    iget-object v8, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->categories:[I

    iget-boolean v9, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->useWordList:Z

    iget-boolean v10, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->degradeLongLine:Z

    iget-boolean v11, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needAlignment:Z

    iget-boolean v12, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needBoundingBox:Z

    iget-boolean v13, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixAlignment:Z

    iget-boolean v14, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixSize:Z

    iget-boolean v15, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixFullWidth:Z

    iget-object v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->languages:[Ljava/lang/String;

    move-object/from16 v16, v7

    iget v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightDecoder:F

    move/from16 v17, v7

    iget v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightPostcorrector:F

    move/from16 v18, v7

    iget-object v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->words:Ljava/util/Map;

    move-object/from16 v19, v7

    iget-object v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->startSymbol:Ljava/lang/String;

    move-object/from16 v20, v7

    iget v7, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    move/from16 v21, v7

    iget v0, v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    move/from16 v22, v0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;-><init>(IIIIILcom/sunia/HTREnginev2/i0;[IZZZZZZZ[Ljava/lang/String;FFLjava/util/Map;Ljava/lang/String;FF)V

    return-object v23
.end method

.method public getCategories()[I
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->categories:[I

    return-object p0
.end method

.method public getCharacterCandidateCount()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->characterCandidateCount:I

    return p0
.end method

.method public getGrammar()Lcom/sunia/HTREnginev2/i0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->languages:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxLength()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->maxLength:I

    return p0
.end method

.method public getModelCount()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->modelCount:I

    return p0
.end method

.method public getNgramWeightDecoder()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightDecoder:F

    return p0
.end method

.method public getNgramWeightPostcorrector()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightPostcorrector:F

    return p0
.end method

.method public getStartSymbol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->startSymbol:Ljava/lang/String;

    return-object p0
.end method

.method public getTextCandidateCount()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->textCandidateCount:I

    return p0
.end method

.method public getWordCandidateCount()I
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->wordCandidateCount:I

    return p0
.end method

.method public getWords()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->words:Ljava/util/Map;

    return-object p0
.end method

.method public getXDpi()F
    .locals 3

    iget v0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    iget v2, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    :cond_0
    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    return p0
.end method

.method public getYDpi()F
    .locals 3

    iget v0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    iget v2, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    :cond_0
    iget p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    return p0
.end method

.method public isDegradeLongLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->degradeLongLine:Z

    return p0
.end method

.method public isFixAlignment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixAlignment:Z

    return p0
.end method

.method public isFixFullWidth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixFullWidth:Z

    return p0
.end method

.method public isFixSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixSize:Z

    return p0
.end method

.method public isNeedAlignment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needAlignment:Z

    return p0
.end method

.method public isNeedBoundingBox()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needBoundingBox:Z

    return p0
.end method

.method public isUseWordList()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->useWordList:Z

    return p0
.end method

.method public varargs setCategories([I)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->categories:[I

    return-void
.end method

.method public setCharacterCandidateCount(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->characterCandidateCount:I

    return-void
.end method

.method public setDegradeLongLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->degradeLongLine:Z

    return-void
.end method

.method public setFixAlignment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixAlignment:Z

    return-void
.end method

.method public setFixFullWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixFullWidth:Z

    return-void
.end method

.method public setFixSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->fixSize:Z

    return-void
.end method

.method public setGrammar(Lcom/sunia/HTREnginev2/i0;)V
    .locals 0

    return-void
.end method

.method public varargs setLanguages([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->languages:[Ljava/lang/String;

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->maxLength:I

    return-void
.end method

.method public setModelCount(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->modelCount:I

    return-void
.end method

.method public setNeedAlignment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needAlignment:Z

    return-void
.end method

.method public setNeedBoundingBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->needBoundingBox:Z

    return-void
.end method

.method public setNgramWeightDecoder(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightDecoder:F

    return-void
.end method

.method public setNgramWeightPostcorrector(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->ngramWeightPostcorrector:F

    return-void
.end method

.method public setStartSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->startSymbol:Ljava/lang/String;

    return-void
.end method

.method public setTextCandidateCount(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->textCandidateCount:I

    return-void
.end method

.method public setUseWordList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->useWordList:Z

    return-void
.end method

.method public setWordCandidateCount(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->wordCandidateCount:I

    return-void
.end method

.method public setWords(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->words:Ljava/util/Map;

    return-void
.end method

.method public setXDpi(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->xDpi:F

    return-void
.end method

.method public setYDpi(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->yDpi:F

    return-void
.end method
