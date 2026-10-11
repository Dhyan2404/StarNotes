.class public final Lcom/sunia/HTREnginev2/kck;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final c:Lcom/sunia/HTREnginev2/kck;

.field public static final d:[B

.field public static final e:J


# instance fields
.field public final a:Ljava/text/DecimalFormat;

.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/kck;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sunia/HTREnginev2/kck;-><init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V

    sput-object v0, Lcom/sunia/HTREnginev2/kck;->c:Lcom/sunia/HTREnginev2/kck;

    const-string v0, "[F"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/kck;->d:[B

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sunia/HTREnginev2/kck;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sunia/HTREnginev2/kck;->a:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/kck;->b:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/text/DecimalFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[F>;",
            "Ljava/text/DecimalFormat;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sunia/HTREnginev2/kck;->b:Ljava/util/function/Function;

    .line 6
    iput-object p2, p0, Lcom/sunia/HTREnginev2/kck;->a:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    iget-object p3, p0, Lcom/sunia/HTREnginev2/kck;->b:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    goto :goto_0

    :cond_0
    check-cast p2, [F

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/kck;->a:Ljava/text/DecimalFormat;

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([FLjava/text/DecimalFormat;)V

    :goto_1
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/sunia/HTREnginev2/kck;->d:[B

    sget-wide p4, Lcom/sunia/HTREnginev2/kck;->e:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/kck;->b:Ljava/util/function/Function;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, [F

    :goto_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([F)V

    return-void
.end method
