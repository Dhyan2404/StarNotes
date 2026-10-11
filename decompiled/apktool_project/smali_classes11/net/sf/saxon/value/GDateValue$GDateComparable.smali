.class public Lnet/sf/saxon/value/GDateValue$GDateComparable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/GDateValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GDateComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/value/GDateValue$GDateComparable;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/GDateValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/GDateValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/GDateValue$GDateComparable;->e:Lnet/sf/saxon/value/GDateValue;

    return-void
.end method


# virtual methods
.method public asGDateValue()Lnet/sf/saxon/value/GDateValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/GDateValue$GDateComparable;->e:Lnet/sf/saxon/value/GDateValue;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/value/GDateValue$GDateComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->compareTo(Lnet/sf/saxon/value/GDateValue$GDateComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/value/GDateValue$GDateComparable;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->asGDateValue()Lnet/sf/saxon/value/GDateValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->asGDateValue()Lnet/sf/saxon/value/GDateValue;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/GDateValue$GDateComparable;->e:Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    .line 4
    iget-object p1, p1, Lnet/sf/saxon/value/GDateValue$GDateComparable;->e:Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    .line 5
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

    instance-of v0, p1, Lnet/sf/saxon/value/GDateValue$GDateComparable;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/GDateValue$GDateComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->compareTo(Lnet/sf/saxon/value/GDateValue$GDateComparable;)I

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

    iget-object p0, p0, Lnet/sf/saxon/value/GDateValue$GDateComparable;->e:Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->hashCode()I

    move-result p0

    return p0
.end method
