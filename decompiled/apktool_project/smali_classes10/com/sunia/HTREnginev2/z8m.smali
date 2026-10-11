.class public Lcom/sunia/HTREnginev2/z8m;
.super Lcom/sunia/HTREnginev2/cin;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/cin;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/twelvemonkeys/util/Time;->getTime()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    const-string v0, "0"

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/twelvemonkeys/lang/StringUtil;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
