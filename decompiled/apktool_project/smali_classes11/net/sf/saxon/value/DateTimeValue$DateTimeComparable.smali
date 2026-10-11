.class public Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/DateTimeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/DateTimeValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/DateTimeValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->compareTo(Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;)I
    .locals 7

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    .line 3
    iget-object p1, p1, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    const/16 v4, 0x348

    const/16 v5, -0x348

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v6}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 7
    invoke-virtual {p1, v6}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 9
    :cond_0
    invoke-virtual {p1, v4}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-gez v0, :cond_1

    return v3

    .line 11
    :cond_1
    invoke-virtual {p1, v5}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-lez p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 13
    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0, v5}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-gez v0, :cond_4

    return v3

    .line 16
    :cond_4
    invoke-virtual {p0, v4}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-lez p0, :cond_5

    return v1

    :cond_5
    return v2

    .line 18
    :cond_6
    invoke-virtual {p0, v6}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 19
    invoke-virtual {p1, v6}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    check-cast p1, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    iget-object v1, p1, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->compareTo(Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;)I

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

    iget-object p0, p0, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->e:Lnet/sf/saxon/value/DateTimeValue;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->b(Lnet/sf/saxon/value/DateTimeValue;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x14

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->c(Lnet/sf/saxon/value/DateTimeValue;)B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->d(Lnet/sf/saxon/value/DateTimeValue;)B

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->e(Lnet/sf/saxon/value/DateTimeValue;)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->g(Lnet/sf/saxon/value/DateTimeValue;)B

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->h(Lnet/sf/saxon/value/DateTimeValue;)B

    move-result v1

    const v2, 0x3b9aca00

    mul-int/2addr v1, v2

    invoke-static {p0}, Lnet/sf/saxon/value/DateTimeValue;->i(Lnet/sf/saxon/value/DateTimeValue;)I

    move-result p0

    add-int/2addr v1, p0

    xor-int p0, v0, v1

    return p0
.end method
