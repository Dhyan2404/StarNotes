.class public Lcom/sunia/HTREnginev2/wbk;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final b:Lcom/sunia/HTREnginev2/wbk;

.field public static final c:[B

.field public static final d:J


# instance fields
.field public final a:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[Z>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/wbk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/wbk;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/sunia/HTREnginev2/wbk;->b:Lcom/sunia/HTREnginev2/wbk;

    const-string v0, "[Z"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/wbk;->c:[B

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/wbk;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[Z>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wbk;->a:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wbk;->a:Ljava/util/function/Function;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    goto :goto_0

    :cond_0
    move-object p0, p2

    check-cast p0, [Z

    :goto_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool([Z)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/sunia/HTREnginev2/wbk;->c:[B

    sget-wide p4, Lcom/sunia/HTREnginev2/wbk;->d:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/wbk;->a:Ljava/util/function/Function;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, [Z

    :goto_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool([Z)V

    return-void
.end method
