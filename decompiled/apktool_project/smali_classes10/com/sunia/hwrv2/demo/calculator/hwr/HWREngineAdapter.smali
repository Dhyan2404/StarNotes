.class public Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECIMAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "HWREngineAdapter"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+(\\.[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(Ljava/lang/String;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HWREngineAdapter"

    invoke-static {v3, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sget-object v5, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter$1;->$SwitchMap$com$sunia$calculatorv2$ink$solver$SolverContext$FractionPreference:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->getFractionPreference()Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    const-string v5, "mathLabels"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v5, "properFraction_mathLabels"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v5, "improperFraction_mathLabels"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v0, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "pcomplement"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    if-eqz v9, :cond_3

    const-string v0, "\\hl{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v6

    goto :goto_3

    :cond_3
    move v10, v0

    :goto_3
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v8, "label"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "}"

    if-eqz v9, :cond_7

    :try_start_0
    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v1

    :cond_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    sub-int/2addr v15, v6

    invoke-virtual {v5, v15}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    sub-int/2addr v15, v6

    invoke-virtual {v5, v15}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v5, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "([^a-zA-Z])e\\+?"

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isTruncated()Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "$1...\\\\times10^{"

    goto :goto_5

    :cond_6
    const-string v13, "$1\\\\times10^{"

    :goto_5
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    const-string v11, " "

    :goto_7
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v10

    goto/16 :goto_1

    :cond_9
    move v1, v0

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static createPlaceholder(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/e;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v1, Lcom/sunia/HTREnginev2/b;

    const-string v2, "?"

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v2, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v2, v1, v3, v4}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    new-instance p0, Lcom/sunia/HTREnginev2/n1;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static enableMathDotConvertMultiplication(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->enableMathDotConvertMultiplication(Z)V

    return-void
.end method

.method public static parseResult(Ljava/lang/String;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/e;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/sunia/commonv2/bean/PartiBean;

    move-object/from16 v3, p0

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/commonv2/bean/PartiBean;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    if-eqz v1, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/PartiBean;->getChars()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    move-object v12, v5

    const-wide/16 v16, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v15, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/commonv2/bean/PartieWords;

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getLabel()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/sunia/HTREnginev2/b1;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-string v18, "math"

    move-object v10, v5

    move-object v11, v4

    move-object v7, v15

    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lcom/sunia/HTREnginev2/b1;-><init>(Ljava/util/List;Ljava/util/List;DLjava/lang/String;)V

    invoke-static {v5}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Lcom/sunia/HTREnginev2/b1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/PartiBean;->getLine_box()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/commonv2/bean/BoundingBox;

    invoke-static {v8, v0, v3}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->toPlaceholderTraces(Lcom/sunia/commonv2/bean/BoundingBox;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v10, v4

    div-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    new-instance v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v12, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v12, v5, v10, v11}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v10

    invoke-direct {v4, v5, v8, v10, v7}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    const-wide/16 v16, 0x0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v15

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getCorrect_rate()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    add-double v16, v16, v19

    new-instance v8, Lcom/sunia/HTREnginev2/b;

    invoke-direct {v8, v10, v13, v14}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getBounding_box()Lcom/sunia/commonv2/bean/BoundingBox;

    move-result-object v5

    invoke-static {v5, v7, v3}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->toPlaceholderTraces(Lcom/sunia/commonv2/bean/BoundingBox;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object v7, v15

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/sunia/HTREnginev2/b1;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-string v15, "math"

    move-object v10, v5

    move-object v11, v4

    invoke-direct/range {v10 .. v15}, Lcom/sunia/HTREnginev2/b1;-><init>(Ljava/util/List;Ljava/util/List;DLjava/lang/String;)V

    invoke-static {v5}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Lcom/sunia/HTREnginev2/b1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v10, v4

    div-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/PartiBean;->getLine_box()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/commonv2/bean/BoundingBox;

    invoke-static {v1, v0, v3}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->toPlaceholderTraces(Lcom/sunia/commonv2/bean/BoundingBox;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v4, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v4, v5, v10, v11}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5, v7}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "HWREngineAdapter"

    const-string v2, "Recognition result is empty"

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->createPlaceholder(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Lcom/sunia/HTREnginev2/n1;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static setSolverContext(Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isDegree()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "degree"

    goto :goto_0

    :cond_0
    const-string v0, "radian"

    :goto_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isTruncated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->getPrecision()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optraddeg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->setCalculateParams(Ljava/lang/String;II)V

    return-void
.end method

.method private static toPlaceholderTraces(Lcom/sunia/commonv2/bean/BoundingBox;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/BoundingBox;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getX()F

    move-result v0

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/BoundingBox;->getHeight()F

    move-result p0

    add-float/2addr v2, v0

    add-float/2addr p0, v1

    new-instance v3, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-static {p2, v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->intersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getArea()F

    move-result p2

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getArea()F

    move-result v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    cmpl-float p2, p2, v3

    if-lez p2, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/p1;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/sunia/HTREnginev2/s1;

    new-instance v3, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v3, v0, v1}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    const/4 v0, 0x0

    aput-object v3, p2, v0

    new-instance v0, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v0, v2, p0}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    const/4 p0, 0x1

    aput-object v0, p2, p0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
