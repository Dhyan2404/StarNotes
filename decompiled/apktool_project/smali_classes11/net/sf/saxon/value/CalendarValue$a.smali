.class public Lnet/sf/saxon/value/CalendarValue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/CalendarValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/CalendarValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/CalendarValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/CalendarValue$a;->e:Lnet/sf/saxon/value/CalendarValue;

    return-void
.end method


# virtual methods
.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/CalendarValue$a;->e:Lnet/sf/saxon/value/CalendarValue;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/value/CalendarValue$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/value/CalendarValue$a;->e:Lnet/sf/saxon/value/CalendarValue;

    check-cast p1, Lnet/sf/saxon/value/CalendarValue$a;

    iget-object p1, p1, Lnet/sf/saxon/value/CalendarValue$a;->e:Lnet/sf/saxon/value/CalendarValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/CalendarValue;->a(Lnet/sf/saxon/value/CalendarValue;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue$a;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->hashCode()I

    move-result p0

    return p0
.end method
