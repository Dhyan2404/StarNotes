.class public final Lnet/sf/saxon/str/EmptyUnicodeString;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# static fields
.field public static final e:Lnet/sf/saxon/str/EmptyUnicodeString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/EmptyUnicodeString;

    invoke-direct {v0}, Lnet/sf/saxon/str/EmptyUnicodeString;-><init>()V

    sput-object v0, Lnet/sf/saxon/str/EmptyUnicodeString;->e:Lnet/sf/saxon/str/EmptyUnicodeString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;
    .locals 1

    sget-object v0, Lnet/sf/saxon/str/EmptyUnicodeString;->e:Lnet/sf/saxon/str/EmptyUnicodeString;

    return-object v0
.end method


# virtual methods
.method public a([CI)V
    .locals 0

    return-void
.end method

.method public b([BI)V
    .locals 0

    return-void
.end method

.method public c([BI)V
    .locals 0

    return-void
.end method

.method public codePointAt(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/EmptyUnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public details()Ljava/lang/String;
    .locals 0

    const-string p0, "empty string"

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/str/UnicodeString;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public indexOf(IJ)J
    .locals 0

    .line 1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public indexOf(Lnet/sf/saxon/str/UnicodeString;J)J
    .locals 0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p2, p2, p0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length32()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->checkSubstringBounds(JJ)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
