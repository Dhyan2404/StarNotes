.class public final Lnet/sf/saxon/value/EmptySequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/GroundedValue;


# static fields
.field public static final e:Lnet/sf/saxon/value/EmptySequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/EmptySequence;

    invoke-direct {v0}, Lnet/sf/saxon/value/EmptySequence;-><init>()V

    sput-object v0, Lnet/sf/saxon/value/EmptySequence;->e:Lnet/sf/saxon/value/EmptySequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/value/EmptySequence;
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/EmptySequence;->e:Lnet/sf/saxon/value/EmptySequence;

    return-object v0
.end method


# virtual methods
.method public effectiveBooleanValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of p0, p1, Lnet/sf/saxon/om/GroundedValue;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to empty sequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p0
.end method

.method public subsequence(II)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "()"

    return-object p0
.end method
