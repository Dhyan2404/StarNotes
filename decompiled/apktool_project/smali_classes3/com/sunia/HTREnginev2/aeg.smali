.class public final Lcom/sunia/HTREnginev2/aeg;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field public final r:Lcom/alibaba/fastjson2/function/ToCharFunction;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToCharFunction;)V
    .locals 11

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v8

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/sunia/HTREnginev2/aeg;->r:Lcom/alibaba/fastjson2/function/ToCharFunction;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aeg;->r:Lcom/alibaba/fastjson2/function/ToCharFunction;

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aeg;->r:Lcom/alibaba/fastjson2/function/ToCharFunction;

    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    const/4 p0, 0x1

    return p0
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aeg;->r:Lcom/alibaba/fastjson2/function/ToCharFunction;

    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/function/ToCharFunction;->applyAsChar(Ljava/lang/Object;)C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    return-void
.end method
