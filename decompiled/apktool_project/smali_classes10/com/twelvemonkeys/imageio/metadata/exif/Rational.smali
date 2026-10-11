.class public final Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/twelvemonkeys/imageio/metadata/exif/Rational;",
        ">;"
    }
.end annotation


# static fields
.field static final NaN:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

.field static final ZERO:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;


# instance fields
.field private final denominator:J

.field private final numerator:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->ZERO:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->NaN:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    .line 3
    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    cmp-long v1, p3, v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide v1

    .line 7
    div-long/2addr p1, v1

    .line 8
    div-long/2addr p3, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-long p1, p1

    .line 9
    :goto_0
    iput-wide p1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    neg-long p3, p3

    .line 10
    :goto_1
    iput-wide p3, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    return-void

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value == Long.MIN_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "denominator == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static gcd(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    neg-long p0, p0

    invoke-static {p2, p3, p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private static lcm(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    invoke-static {p2, p3, p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->lcm(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide v0

    div-long/2addr p2, v0

    mul-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public compareTo(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide p0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    cmpl-double p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->compareTo(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)I

    move-result p0

    return p0
.end method

.method public denominator()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    return-wide v0
.end method

.method public divides(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->ZERO:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->reciprocal()Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->times(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doubleValue()D
    .locals 4

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->NaN:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-ne p0, v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->compareTo(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public minus(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 0

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->negate()Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->plus(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 5

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    neg-long v1, v1

    iget-wide v3, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public numerator()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    return-wide v0
.end method

.method public plus(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 11

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->ZERO:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    iget-wide v2, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    invoke-static {v0, v1, v2, v3}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    iget-wide v4, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    invoke-static {v2, v3, v4, v5}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->gcd(JJ)J

    move-result-wide v2

    new-instance v4, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v5, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    div-long/2addr v5, v0

    iget-wide v7, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    div-long v9, v7, v2

    mul-long/2addr v5, v9

    iget-wide v9, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    div-long/2addr v9, v0

    iget-wide p0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    div-long v2, p0, v2

    mul-long/2addr v9, v2

    add-long/2addr v5, v9

    mul-long/2addr v5, v0

    invoke-static {p0, p1, v7, v8}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->lcm(JJ)J

    move-result-wide p0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method public reciprocal()Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 5

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    iget-wide v3, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public times(Lcom/twelvemonkeys/imageio/metadata/exif/Rational;)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 6

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->ZERO:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    iget-wide v3, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    new-instance v1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v2, p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    iget-wide p0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    new-instance p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    iget-wide v2, v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    iget-wide v4, v1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    mul-long/2addr v2, v4

    iget-wide v4, v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    iget-wide v0, v1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    mul-long/2addr v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->NaN:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-ne p0, v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
