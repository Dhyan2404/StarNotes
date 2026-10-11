.class public Lnet/sf/saxon/value/DurationValue$DurationComparable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/DurationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/value/DurationValue$DurationComparable;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:J

.field public final g:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    iput-wide p2, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    iput p4, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-gez p1, :cond_0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->b(I)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    new-array p0, v0, [I

    fill-array-data p0, :array_0

    aget p0, p0, p1

    return p0

    :cond_1
    div-int/lit8 v1, p1, 0xc

    rem-int/2addr p1, v0

    mul-int/lit16 v0, v1, 0x16d

    rem-int/lit8 v2, v1, 0x4

    add-int/2addr v0, v2

    rem-int/lit8 v2, v1, 0x64

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v1, 0x190

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->a(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3e
        0x5c
        0x7b
        0x99
        0xb8
        0xd7
        0xf5
        0x114
        0x132
        0x151
    .end array-data
.end method

.method public final b(I)I
    .locals 3

    if-gez p1, :cond_0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->a(I)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    new-array p0, v0, [I

    fill-array-data p0, :array_0

    aget p0, p0, p1

    return p0

    :cond_1
    div-int/lit8 v1, p1, 0xc

    rem-int/2addr p1, v0

    mul-int/lit16 v0, v1, 0x16d

    rem-int/lit8 v2, v1, 0x4

    add-int/2addr v0, v2

    rem-int/lit8 v2, v1, 0x64

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v1, 0x190

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->b(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1c
        0x3b
        0x59
        0x78
        0x96
        0xb5
        0xd4
        0xf2
        0x111
        0x12f
        0x14e
    .end array-data
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->compareTo(Lnet/sf/saxon/value/DurationValue$DurationComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/value/DurationValue$DurationComparable;)I
    .locals 10

    .line 2
    iget v0, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    iget v1, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-wide v0, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    iget-wide v2, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iget p0, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->g:I

    iget p1, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->g:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->b(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    long-to-double v4, v4

    add-double/2addr v0, v4

    .line 7
    iget v4, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    invoke-virtual {p0, v4}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->a(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    long-to-double v6, v6

    add-double/2addr v4, v6

    .line 8
    iget v6, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    invoke-virtual {p0, v6}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->b(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    iget-wide v8, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    long-to-double v8, v8

    add-double/2addr v6, v8

    .line 9
    iget v8, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    invoke-virtual {p0, v8}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->a(I)I

    move-result p0

    int-to-double v8, p0

    mul-double/2addr v8, v2

    iget-wide p0, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    long-to-double p0, p0

    add-double/2addr v8, p0

    cmpg-double p0, v4, v6

    if-gez p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    cmpl-double p0, v0, v8

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/DurationValue$DurationComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->compareTo(Lnet/sf/saxon/value/DurationValue$DurationComparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->e:I

    iget-wide v1, p0, Lnet/sf/saxon/value/DurationValue$DurationComparable;->f:J

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method
