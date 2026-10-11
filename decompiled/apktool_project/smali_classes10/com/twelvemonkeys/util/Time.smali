.class public Lcom/twelvemonkeys/util/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SECONDS_IN_MINUTE:I = 0x3c


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/twelvemonkeys/util/Time;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/Time;->setTime(I)V

    return-void
.end method

.method public static parseTime(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;
    .locals 1

    invoke-static {}, Lcom/twelvemonkeys/util/TimeFormat;->getInstance()Lcom/twelvemonkeys/util/TimeFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/TimeFormat;->parse(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMinutes()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public getSeconds()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    rem-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public getTime()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    return p0
.end method

.method public getTimeInMillis()J
    .locals 4

    iget p0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public setMinutes(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/twelvemonkeys/util/Time;->a:I

    return-void
.end method

.method public setSeconds(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/Time;->getMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p1

    iput v0, p0, Lcom/twelvemonkeys/util/Time;->a:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/twelvemonkeys/util/Time;->a:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Time argument must be 0 or positive!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/Time;->getMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const-string v1, "0"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/Time;->getSeconds()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/twelvemonkeys/util/TimeFormat;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/util/TimeFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/TimeFormat;->format(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
