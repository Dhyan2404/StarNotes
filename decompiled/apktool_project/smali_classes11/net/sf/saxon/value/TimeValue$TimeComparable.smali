.class public Lnet/sf/saxon/value/TimeValue$TimeComparable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/TimeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/value/TimeValue$TimeComparable;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/TimeValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/TimeValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/TimeValue$TimeComparable;->e:Lnet/sf/saxon/value/TimeValue;

    return-void
.end method


# virtual methods
.method public asTimeValue()Lnet/sf/saxon/value/TimeValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TimeValue$TimeComparable;->e:Lnet/sf/saxon/value/TimeValue;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/value/TimeValue$TimeComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->compareTo(Lnet/sf/saxon/value/TimeValue$TimeComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/value/TimeValue$TimeComparable;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->asTimeValue()Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->asTimeValue()Lnet/sf/saxon/value/TimeValue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->compareTo(Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/TimeValue$TimeComparable;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/TimeValue$TimeComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->compareTo(Lnet/sf/saxon/value/TimeValue$TimeComparable;)I

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
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/TimeValue$TimeComparable;->e:Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->hashCode()I

    move-result p0

    return p0
.end method
