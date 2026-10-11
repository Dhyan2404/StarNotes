.class public final Lcom/sunia/HTREnginev2/weg;
.super Lcom/sunia/HTREnginev2/seg;
.source "SourceFile"


# instance fields
.field public final r:Lcom/alibaba/fastjson2/function/ToShortFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToShortFunction;)V
    .locals 10

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sunia/HTREnginev2/seg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/sunia/HTREnginev2/weg;->r:Lcom/alibaba/fastjson2/function/ToShortFunction;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/weg;->r:Lcom/alibaba/fastjson2/function/ToShortFunction;

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/function/ToShortFunction;->applyAsShort(Ljava/lang/Object;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/weg;->r:Lcom/alibaba/fastjson2/function/ToShortFunction;

    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToShortFunction;->applyAsShort(Ljava/lang/Object;)S

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/seg;->c(Lcom/alibaba/fastjson2/JSONWriter;S)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p0
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/weg;->r:Lcom/alibaba/fastjson2/function/ToShortFunction;

    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/function/ToShortFunction;->applyAsShort(Ljava/lang/Object;)S

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method
