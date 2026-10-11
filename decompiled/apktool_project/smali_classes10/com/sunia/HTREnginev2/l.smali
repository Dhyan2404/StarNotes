.class public Lcom/sunia/HTREnginev2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/editor/ICopyAndPaste;


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/l;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->getCopyAndPasteMode()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/z;

    .line 8
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/z;

    .line 9
    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/z;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    .line 10
    instance-of v6, v5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v6, :cond_1

    .line 11
    check-cast v5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {v4, v2}, Lcom/sunia/HTREnginev2/l;->c(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-nez v0, :cond_5

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 16
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 17
    instance-of v5, v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v5, :cond_4

    .line 18
    check-cast v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-ne v0, p0, :cond_7

    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 21
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 22
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v3, v2}, Lcom/sunia/HTREnginev2/l;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    if-ne v0, p0, :cond_8

    .line 23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    return-object v2

    :cond_8
    return-object v1
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/calculatorv2/ink/model/e;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 28
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 29
    instance-of v5, v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v5, :cond_1

    .line 30
    check-cast v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/z;

    .line 32
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/z;

    .line 33
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/z;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v4

    .line 34
    instance-of v5, v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v5, :cond_4

    .line 35
    check-cast v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v3, v2}, Lcom/sunia/HTREnginev2/l;->c(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;)V

    goto :goto_1

    .line 37
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 39
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 40
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v3, v2}, Lcom/sunia/HTREnginev2/l;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/util/List;

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const/4 p1, 0x2

    aput-object v2, p0, p1

    .line 41
    invoke-static {p0}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(FFLandroid/content/ClipboardManager;Lcom/sunia/HTREnginev2/q;)Z
    .locals 16

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "text/vnd.sunia.equation"

    .line 44
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    return v1

    .line 46
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    array-length v6, v3

    move v7, v1

    :goto_1
    const-string v8, "CopyAndPasteHelper"

    const/4 v0, 0x1

    if-ge v7, v6, :cond_3

    aget-object v9, v3, v7

    const/16 v10, 0x25

    .line 49
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    .line 51
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 52
    new-instance v10, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    aget-object v12, v9, v1

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/4 v13, 0x2

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v14, 0x3

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v10, v12, v13, v0, v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    .line 53
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 56
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 57
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v7

    sub-float v7, p0, v7

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v9

    sub-float v9, p1, v9

    invoke-virtual {v6, v7, v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->translate(FF)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/sunia/HTREnginev2/q;->l()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->intersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v9

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v10

    const v11, 0x26901d7d    # 1.0E-15f

    add-float/2addr v10, v11

    div-float/2addr v9, v10

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v10

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v12

    add-float/2addr v12, v11

    div-float/2addr v10, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 60
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v10

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v7

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v6

    mul-float/2addr v6, v9

    sub-float/2addr v7, v6

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_4

    .line 62
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 63
    new-instance v12, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v13

    mul-float/2addr v13, v9

    add-float/2addr v13, v10

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v14

    mul-float/2addr v14, v9

    add-float/2addr v14, v10

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v15

    mul-float/2addr v15, v9

    add-float/2addr v15, v7

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v11

    mul-float/2addr v11, v9

    add-float/2addr v11, v7

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    .line 64
    new-instance v11, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v13, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sunia/calculatorv2/ink/model/f;

    move v15, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {v13, v14, v0, v1}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v11, v0, v1, v12, v2}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v15, 0x1

    const/4 v0, 0x1

    goto :goto_3

    .line 65
    :cond_4
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/e;

    new-instance v1, Lcom/sunia/HTREnginev2/n1;

    invoke-direct {v1, v6}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, p3

    .line 66
    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/model/e;)V

    const-string v0, "Pasted"

    .line 67
    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public static a(Landroid/content/ClipboardManager;Lcom/sunia/HTREnginev2/q;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->j()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/l;->a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/l;->copy(Ljava/util/List;Landroid/content/ClipboardManager;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/i;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/l;->d(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/l;->b(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/z;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/i;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/l;->d(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/l;->c(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static copy(Ljava/util/List;Landroid/content/ClipboardManager;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;",
            "Landroid/content/ClipboardManager;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CopyAndPasteHelper"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/IElement;

    instance-of v5, v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v5, :cond_1

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    goto :goto_1

    :cond_1
    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    :goto_1
    invoke-static {v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->encode(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\ldots "

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/v0;->a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Landroid/content/ClipData;

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "Spans"

    invoke-direct {p0, v0, v2, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/vnd.sunia.equation"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p0, "Copied"

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v4
.end method

.method public static d(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/l;->a:Ljava/util/regex/Pattern;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/l;->d(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
