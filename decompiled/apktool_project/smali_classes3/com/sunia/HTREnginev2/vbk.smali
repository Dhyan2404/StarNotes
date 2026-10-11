.class public final Lcom/sunia/HTREnginev2/vbk;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final c:Lcom/sunia/HTREnginev2/vbk;


# instance fields
.field public final a:Ljava/text/DecimalFormat;

.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/vbk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sunia/HTREnginev2/vbk;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    sput-object v0, Lcom/sunia/HTREnginev2/vbk;->c:Lcom/sunia/HTREnginev2/vbk;

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vbk;->a:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vbk;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFunction()Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vbk;->b:Ljava/util/function/Function;

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/vbk;->b:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vbk;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p5, p6, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/vbk;->b:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/vbk;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p5, p6, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method
